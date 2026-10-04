class MacosNotifications < Formula
  desc "Local archive and terminal browser for captured macOS notifications"
  homepage "https://github.com/cs50victor/macos-notifications"
  url "https://github.com/cs50victor/macos-notifications/releases/download/v0.2.0/macos-notifications-v0.2.0-source.tar"
  sha256 "32a67af2abe1cc2c286222e860cfaa99fb24d310b63078496ccfb860bc93e044"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    ENV["CGO_ENABLED"] = "0"
    ENV["GOTOOLCHAIN"] = "local"
    ldflags = "-X github.com/cs50victor/macos-notifications/internal/notehistory.Version=v#{version}"
    system "go", "build", *std_go_args(ldflags:), "."
  end

  def caveats
    <<~EOS
      Installing this formula does not start notification capture.
      Background capture is optional: macos-notifications install
      This uses a private macOS database and can miss short-lived notifications.
      Full Disk Access may be required for capture.
      After upgrading, rerun macos-notifications install if you use its LaunchAgent.
    EOS
  end

  test do
    ENV["NOTIFICATION_DB"] = (testpath/"unused-source.db").to_s
    ENV["NOTIFICATION_HISTORY"] = (testpath/"fixture.db").to_s
    assert_match "macos-notifications v#{version}", shell_output("#{bin}/macos-notifications version")
    assert_empty shell_output("#{bin}/macos-notifications show")
    system "/usr/bin/sqlite3", ENV.fetch("NOTIFICATION_HISTORY"), <<~SQL
      INSERT INTO notifications (uuid, delivered_at, app, title, subtitle, body, recorded_at)
      VALUES ('fixture', '2026-10-04 10:00:00', '', 'Synthetic fixture', '',
              'body' || char(27) || '[2J' || char(7), '2026-10-04 10:00:01');
    SQL
    output = shell_output("#{bin}/macos-notifications show 1")
    assert_match "Synthetic fixture", output
    assert_match "body", output
    refute_match(/[\x00-\x09\x0b-\x1f\x7f]/, output)
    refute_path_exists testpath/"unused-source.db"
    assert_equal 0600, (testpath/"fixture.db").stat.mode & 0777

    denied = testpath/"denied-source"
    denied.mkpath
    denied.chmod 0000
    begin
      ENV["NOTIFICATION_DB"] = (denied/"db").to_s
      assert_match "Synthetic fixture", shell_output("#{bin}/macos-notifications show 1")
    ensure
      denied.chmod 0700
    end

    rejected = testpath/"source-shaped.db"
    system "/usr/bin/sqlite3", rejected, "CREATE TABLE app (app_id INTEGER); CREATE TABLE record (rec_id INTEGER);"
    rejected.chmod 0644
    before = rejected.binread
    ENV["NOTIFICATION_DB"] = (testpath/"unused-source.db").to_s
    ENV["NOTIFICATION_HISTORY"] = rejected.to_s
    assert_match "source database", shell_output("#{bin}/macos-notifications show 2>&1", 1)
    assert_equal before, rejected.binread
    assert_equal 0644, rejected.stat.mode & 0777
  end
end

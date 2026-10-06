cask "hemy" do
  version "1.0.0-beta.1"
  sha256 "f493a9c9885f8f055a93756a0eb5d25ab6799e793bb10a16273d25ecd1dcfdc5"

  url "https://github.com/willanddadia/homebrew-hemy/releases/download/v#{version}/Hemy-#{version}.dmg"
  name "Hemy"
  desc "Beta: Slack-like Mac app for Claude Code sessions"
  homepage "https://github.com/willanddadia/homebrew-hemy"

  depends_on macos: :tahoe
  depends_on arch: :arm64
  depends_on formula: "tmux"

  app "Hemy.app"

  zap trash: [
    "~/Library/Application Support/ClaudeSessions",
    "~/Library/Preferences/local.claude-sessions.plist",
  ]
end

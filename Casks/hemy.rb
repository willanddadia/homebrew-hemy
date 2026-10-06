cask "hemy" do
  version "1.0.0-beta.3"
  sha256 "d84f9455bf5b635d399e746251c9e8f7cd874ad1d7efe4fc7b5e6e574e0410f6"

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

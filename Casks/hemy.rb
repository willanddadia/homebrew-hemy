cask "hemy" do
  version "1.0.0-beta.2"
  sha256 "3bf16b30affee60203573a77efbdcd56dcd7764f84389a1feb6731a93da7b930"

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

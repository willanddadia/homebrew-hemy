cask "hemy" do
  version "1.0.5"
  sha256 "ef83d3a7f835ead97f5b970768ceb106cbe82da59757e020444cf6d9d4d63205"

  url "https://github.com/willanddadia/homebrew-hemy/releases/download/v#{version}/Hemy-#{version}.dmg"
  name "Hemy"
  desc "Slack-like Mac app for Claude Code sessions"
  homepage "https://github.com/willanddadia/homebrew-hemy"

  depends_on macos: :tahoe
  depends_on arch: :arm64
  depends_on formula: "tmux"

  app "Hemy.app"

  # Only the new app's folders. The 1.0 betas' data (~/.claude-sessions, ClaudeSessions) and
  # Claude Code's own ~/.claude are never removed.
  zap trash: [
    "~/.hemy",
    "~/Library/Application Support/Hemy",
    "~/Library/Preferences/com.willanddadia.hemy.plist",
  ]
end

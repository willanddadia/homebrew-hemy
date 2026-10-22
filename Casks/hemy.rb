cask "hemy" do
  version "1.0.0"
  sha256 "3ccdb25d5c9a1e736e91eec31b604aeb6a521ca5278af6d26200872980111384"

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

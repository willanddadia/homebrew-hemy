cask "hemy" do
  version "1.0.3"
  sha256 "24c3d4788e1a086dd38bc153bf5ccfa41cc8ddf3ecceaee44a5a30fd701564a8"

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

cask "hemy" do
  version "1.0.1"
  sha256 "1ec2e9c6d02f11ce66e5f415d7f22a99eb9f76f99ef943265b76ea360bdb73aa"

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

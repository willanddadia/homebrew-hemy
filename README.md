# Hemy (beta) Homebrew tap

Hemy is a Mac app that works like Slack for Claude Code sessions. This is a **beta** (1.0.0-beta.1).

```
brew install --cask willanddadia/hemy/hemy
```

Requirements: Apple Silicon Mac, macOS 26 (Tahoe), Claude Code. tmux is installed for you by Homebrew.

The app is signed with a Developer ID and notarized by Apple. This repository only holds the cask and the release download; it contains no source code.

`brew uninstall --zap --cask hemy` removes the app and its app data, but leaves `~/.claude-sessions` (your tasks) in place.

Works with Claude Code. Not affiliated with Anthropic.

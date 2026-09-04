class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.1/toktrack-darwin-arm64.tar.gz"
      sha256 "b026611903f1e858b460c17a27111998d963ee369fc1de573ff1b6efa50aeec6"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.1/toktrack-darwin-x64.tar.gz"
      sha256 "af60cee2a1002aa34061c380c23d8e191d50eeccc838eb8714816630cbf8a1ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.1/toktrack-linux-arm64.tar.gz"
      sha256 "27632bae8dc5b940d3fdc737d4e28d9db2e507ed9630e1c69b1ee7b346979d59"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.1/toktrack-linux-x64.tar.gz"
      sha256 "63f92c70028d0dbf89e4ea4559fb80971ee1234675d3ef0a7ac95fed38f0898d"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

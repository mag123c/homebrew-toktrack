class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.15.0/toktrack-darwin-arm64.tar.gz"
      sha256 "d1a7079d181b386d36d290887e089c8d56e728e7a43088fc3324659ae5cb181b"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.15.0/toktrack-darwin-x64.tar.gz"
      sha256 "7f5a42c9b2042dfdb54052aed1ca6dd7bb9b1804cccea40a27370ff4be350151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.15.0/toktrack-linux-arm64.tar.gz"
      sha256 "90a58daf51da0c6db220d690a3378c3799d3b6ba74d8447cf17f8103d5cfb48a"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.15.0/toktrack-linux-x64.tar.gz"
      sha256 "4b40d7d486cc19e0c15a08c175ee631f109ef1aaf8401f8d0a67293582c4fa82"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

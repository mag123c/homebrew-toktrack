class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.0/toktrack-darwin-arm64.tar.gz"
      sha256 "4da5cf258f64f26cb99927577ac4c91de84e333a4690d4dd20fb5381f429e698"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.0/toktrack-darwin-x64.tar.gz"
      sha256 "7ef05e8f8daeed3f8f2b0e7daf448e2f1faa3a1ab0b6a57751562c594f3c63fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.0/toktrack-linux-arm64.tar.gz"
      sha256 "54eefb23c7cc0f8e967ae81361d3b838de8e43f298bef0a303c14c9c0a1204de"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.0/toktrack-linux-x64.tar.gz"
      sha256 "e07d60ed1857967f3de9326d7171ba8de0717d4fbd1bc8c2c22e590a98a311bd"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

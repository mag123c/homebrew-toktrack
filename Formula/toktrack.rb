class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.10.0/toktrack-darwin-arm64.tar.gz"
      sha256 "7cd6de79db7e9a6798df2ea0c9a6362ec8965ac2f6fb1e992c47446b43f8b0fb"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.10.0/toktrack-darwin-x64.tar.gz"
      sha256 "e13881db12a0f8dce2fc41b59ee5477e43726593638f938ef0910ae30294d28d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.10.0/toktrack-linux-arm64.tar.gz"
      sha256 "3ffccb88429cc99e9667ad508a249a4480a25de86ec2f234a23362f70f6bc93a"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.10.0/toktrack-linux-x64.tar.gz"
      sha256 "2b06d2ace2ad595c88b3204ba4595b307f4d6c3ceb1e9ac79154677b5b92ea62"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

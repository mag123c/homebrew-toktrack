class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.1/toktrack-darwin-arm64.tar.gz"
      sha256 "3a2658d142a90d16120db6acadfbbff226c2c4506db7dee21073c608e0a7cd06"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.1/toktrack-darwin-x64.tar.gz"
      sha256 "a7de053ff2dfeec2032b546c83c260ce1e76b3b57d573bc5b8ba8cb1684f3a8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.1/toktrack-linux-arm64.tar.gz"
      sha256 "d47d0ed0babb4eebb1857f66535a565c5ba636b4c61ed930d1ee32070b05cf74"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.1/toktrack-linux-x64.tar.gz"
      sha256 "52fd1184aac83269f6540d52ba14afcbe359ca1efa6cbf66bf1eaec200423e3c"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

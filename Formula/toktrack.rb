class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.1/toktrack-darwin-arm64.tar.gz"
      sha256 "c4d5311203e5ba822cc9da0bfc363587f206d567a661f5ce086802dcee997cbb"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.1/toktrack-darwin-x64.tar.gz"
      sha256 "f14b65aa1a8cca81f76b881c0335565eb73d08de6b004d093a99f8414d22094a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.1/toktrack-linux-arm64.tar.gz"
      sha256 "52f84ff8e6314d7d62512e937df4c29993e7d97f9ebb6ed05859fc295cbaf5d7"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.1/toktrack-linux-x64.tar.gz"
      sha256 "be5c6efaf029f0ae532132c6630a69f3d4746d180e7709d6c65f98a36542251a"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

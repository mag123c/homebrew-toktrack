class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.0/toktrack-darwin-arm64.tar.gz"
      sha256 "daa95472a0d0d1b380ab928a049ecb42691f34a84892041e5a90fa933a27bb59"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.0/toktrack-darwin-x64.tar.gz"
      sha256 "ad616b8e422d1afa13cfc4ba2411a4500e3858f57fe08189c5673a725a8a7300"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.0/toktrack-linux-arm64.tar.gz"
      sha256 "4737e4ee183283ce6008bf32d5fd4a4dc5b037e856a1efa78cd65f76b41ff2cc"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.13.0/toktrack-linux-x64.tar.gz"
      sha256 "52ff693db07bb4597f9fd5581f2332f891a8d3b5a64f4263e227c1d6425acedd"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.17.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.3/toktrack-darwin-arm64.tar.gz"
      sha256 "07df7c416f84de2cefe72acfd135eff343e3aed7b4d5d940d6c6e884d77c7850"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.3/toktrack-darwin-x64.tar.gz"
      sha256 "015eb8a26bfb7c8a405ea0675f5b40e7634a37292c427fae1f53ed94848ca090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.3/toktrack-linux-arm64.tar.gz"
      sha256 "281e3803cf71ee8e740dac305e0af8115d5f7df1e743a976021f301a7133ede7"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.3/toktrack-linux-x64.tar.gz"
      sha256 "42c26870d11139b7dd94fc1e5691f3feadf4f415f54c02c3652626bdfb9bcd41"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

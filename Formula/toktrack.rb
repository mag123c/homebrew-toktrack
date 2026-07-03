class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.1/toktrack-darwin-arm64.tar.gz"
      sha256 "24099a055b14ba3578eed037aa1e12aece3463d8df8a239cbd91c16d36faf1ea"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.1/toktrack-darwin-x64.tar.gz"
      sha256 "2133ea7e53f5907fa62dbd102427cceb416e3721161e194e54d8c4801ca11e71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.1/toktrack-linux-arm64.tar.gz"
      sha256 "2ab249255f5ac3f132c4400db3bc524aedab9af9acffd1042a93880cd373b651"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.14.1/toktrack-linux-x64.tar.gz"
      sha256 "2decbaa8cae3a06a605fdb90cc7aae91de6273458f4122e6137b6888cb2a4189"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

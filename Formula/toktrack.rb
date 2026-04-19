class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, OpenCode)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v#{version}/toktrack-darwin-arm64.tar.gz"
      sha256 "f6c2a0668ad8d1f6c2d65673afb2bdbc034418a7e17ec5d9323ecf39efaf9085"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v#{version}/toktrack-darwin-x64.tar.gz"
      sha256 "3accee4d1b45ba39673cd9221ab7315049818a909bd085b162ddc348bf915c06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v#{version}/toktrack-linux-arm64.tar.gz"
      sha256 "2b026179dd8e33e4171a943538b219a13da7ab6e42459604a07c4909b705db02"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v#{version}/toktrack-linux-x64.tar.gz"
      sha256 "6f2509f3be26099585a80e9bf34856e71c313397bb0864f1b333c0f1144585fc"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

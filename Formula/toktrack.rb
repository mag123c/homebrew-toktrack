class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.17.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.5/toktrack-darwin-arm64.tar.gz"
      sha256 "51a5edf4dda1ac9be49c81a53d8ef863d5eaf49caa92682abfb09ee51f35314f"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.5/toktrack-darwin-x64.tar.gz"
      sha256 "f545c60a97dd2b6c2afa7b2af5a7fefff352bcb280fdb34483100e6fd8d8e8cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.5/toktrack-linux-arm64.tar.gz"
      sha256 "93070abfc9383a6cd9c2e9b38da27b6f6a2fc5a59d2ac5c8ea8f19d073d2dc9b"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.5/toktrack-linux-x64.tar.gz"
      sha256 "12071dc460b5d6afda7b5a0778a2be4c23e086b3d92ad803711f9f43bf34749d"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

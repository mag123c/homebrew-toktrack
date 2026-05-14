class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, OpenCode)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.6.0/toktrack-darwin-arm64.tar.gz"
      sha256 "bcdf5583c46449c79505e21d2702341c0b964602e9560e6e7cedc41949ff65d0"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.6.0/toktrack-darwin-x64.tar.gz"
      sha256 "53cb6b54584e700735bfdcde1df57ed8b5a7778bea6da6fcc67d176810fe2ca3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.6.0/toktrack-linux-arm64.tar.gz"
      sha256 "95b23592ba6f9bf40d2f2d4502ea0f8ea2a05ac8a35e7a77e493ed0ea95a1466"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.6.0/toktrack-linux-x64.tar.gz"
      sha256 "0ecf69db91a43519a96c1a45a9cf1afa7ea83b890249eea264d3d411a290510f"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

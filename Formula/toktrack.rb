class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.0/toktrack-darwin-arm64.tar.gz"
      sha256 "8540be70a86a2f10c858455b0616567a7749ceec737699971077b89f565b3040"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.0/toktrack-darwin-x64.tar.gz"
      sha256 "549624604613fe074636921a05837b362a00a55b71e48f9d735bc174919378a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.0/toktrack-linux-arm64.tar.gz"
      sha256 "972b848798d6d12d0d37a8ec892649a616e805d0e9c3989cbd5a01aa1e969bcc"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.8.0/toktrack-linux-x64.tar.gz"
      sha256 "53a9858c83331e3e9dd75994277335a3603edaa99fff874f3961e50683b03a71"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

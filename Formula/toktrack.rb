class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.2/toktrack-darwin-arm64.tar.gz"
      sha256 "977bedc3a92748b2bf986aecfa7d5ffba703e2a6722d3026a8e79ca112e47d54"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.2/toktrack-darwin-x64.tar.gz"
      sha256 "9908ff0144f34b31f7672defb75c8175a7a7e4f2991b8a1b3b0c010932cea75f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.2/toktrack-linux-arm64.tar.gz"
      sha256 "64c19278b9ca12cab11da0f69006752356b9767127fc87881cab2b222ed2f1ac"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.2/toktrack-linux-x64.tar.gz"
      sha256 "9dfc1f03998d14e4ca2466244bcc7b9e755a608ca8abce7a99d58001a30cfa3e"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

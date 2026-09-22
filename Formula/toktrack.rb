class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.17.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.4/toktrack-darwin-arm64.tar.gz"
      sha256 "496b87873de3147f2cf6211f5a957265d61c1744915e3d553272247103fe3e4c"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.4/toktrack-darwin-x64.tar.gz"
      sha256 "261cb99529d42a05ea6f67f7485a66e3102419978f7d0bf8e43c05892f942503"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.4/toktrack-linux-arm64.tar.gz"
      sha256 "5f05e99919c62bf1ba1648425039cc96dc4839b6897b83e507cdbff951b3f3a0"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.4/toktrack-linux-x64.tar.gz"
      sha256 "7321a5e3eaf6eca60922680fd24a0270ca9722c2a8100bb8a5bd206ec616c02d"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

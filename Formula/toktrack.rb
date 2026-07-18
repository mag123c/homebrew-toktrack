class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.0/toktrack-darwin-arm64.tar.gz"
      sha256 "e41a875a00a370774b78f202f8c1fde436160996321f00685dca70795f42cc59"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.0/toktrack-darwin-x64.tar.gz"
      sha256 "0eee7950118943eae1c054cb74d2fbbeeefdf244ecaf0ecbec2642bac1c9f4d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.0/toktrack-linux-arm64.tar.gz"
      sha256 "3709134a343a73eb661f9344114235daae2d757f873f9499f01592ae03215c5c"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.0/toktrack-linux-x64.tar.gz"
      sha256 "b07794596e8c2dc3352e70882124daf21bbaf05bf06881648eff294d0b4d4e6c"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

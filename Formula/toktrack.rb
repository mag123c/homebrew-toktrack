class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.11.0/toktrack-darwin-arm64.tar.gz"
      sha256 "7c49b77573f670354ca22e3edd12ef548fd5fad253fff82a075cda2f46601ac8"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.11.0/toktrack-darwin-x64.tar.gz"
      sha256 "7af3cd12fcc2d79a04196f7e92b97ed1b7c0310c665b81c831713d542bba8533"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.11.0/toktrack-linux-arm64.tar.gz"
      sha256 "c906c1056155071db7e6d3d949ce0be9298ec9a99721f2f5ccffe40cd331d0ce"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.11.0/toktrack-linux-x64.tar.gz"
      sha256 "89e0df62cf5cd4c16be9dbdd8f70aa36077edbde07f87241413661a408460472"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

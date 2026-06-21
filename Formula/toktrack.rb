class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.12.0/toktrack-darwin-arm64.tar.gz"
      sha256 "3fce2f4fb942564c43e8b73fbcffbc11edd06724b55259c0c977e3504ffcd985"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.12.0/toktrack-darwin-x64.tar.gz"
      sha256 "4ddabb645916fbe65719379a1210cf4f9181dd2ed0b2998b5aa7b2a4d15dcd50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.12.0/toktrack-linux-arm64.tar.gz"
      sha256 "6357a8e63232a8c05d81806405433f42a132b24c0aa6bfada70a32ce4acc5f83"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.12.0/toktrack-linux-x64.tar.gz"
      sha256 "3f1c948819863e2cadf265f0d1030400e2116e3fe4c35eaa4d3d4aeaa9689de4"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

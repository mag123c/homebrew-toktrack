class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.1/toktrack-darwin-arm64.tar.gz"
      sha256 "65dc834cdce93180405d020f68c2e369457e0ec4946fbc48bb08d38cf169aa27"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.1/toktrack-darwin-x64.tar.gz"
      sha256 "70711613c5133c0d988f503a0d65478c9f93c6d155feabadf76b919dade856c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.1/toktrack-linux-arm64.tar.gz"
      sha256 "4c7e64ba99735c66932980ed9506598f7c3a762d573e9afe82a28b7742d16057"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.16.1/toktrack-linux-x64.tar.gz"
      sha256 "33dab3506c44da17f241a7ec0802e5f86620cc2291075cf51fac4defc72200e5"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

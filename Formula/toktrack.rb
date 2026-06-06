class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.9.0/toktrack-darwin-arm64.tar.gz"
      sha256 "0f02d9a355eb047b87277dbb6a60ff159b27b5d6f9cf2fddbedb4f8bf32f8c5e"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.9.0/toktrack-darwin-x64.tar.gz"
      sha256 "b7cae6902fb65ab7f1c0ec78391f46e03349d49936832eac9be250f93db730c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.9.0/toktrack-linux-arm64.tar.gz"
      sha256 "4c9367953644819c306796dda7a665c5f7df24ca9a744bcbd798c84db3652abf"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.9.0/toktrack-linux-x64.tar.gz"
      sha256 "b6fd9e43b337a81dd5e26fd40c1f5d11fa0a5605385a8362ef0b3b666d93680e"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

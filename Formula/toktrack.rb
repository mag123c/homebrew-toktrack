class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, Qwen, OpenCode, PI Agent)"
  homepage "https://github.com/mag123c/toktrack"
  version "2.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.0/toktrack-darwin-arm64.tar.gz"
      sha256 "01765baa6308804f485e4963101b9729907a2e5903a91438b1810167b9c62b95"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.0/toktrack-darwin-x64.tar.gz"
      sha256 "5ae4bc25b27283f02f83864c685b7681f5af40183d9dde09bfb2db2ce72966f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.0/toktrack-linux-arm64.tar.gz"
      sha256 "cfacfa554c26f7535dc46b0361ad035eaea1b53d1e0d7673eccd29e3cc511cfa"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.17.0/toktrack-linux-x64.tar.gz"
      sha256 "de5beea06c84dddf86f81110d7338631233ab4ed2ee16996b2b90cdc21f5d7c8"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

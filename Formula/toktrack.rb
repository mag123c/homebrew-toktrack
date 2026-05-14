class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, OpenCode)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.2/toktrack-darwin-arm64.tar.gz"
      sha256 "fc5b99fc69acba3e2271d3766728228d067903f7265c90343ac17fd8f580aa83"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.2/toktrack-darwin-x64.tar.gz"
      sha256 "dc5b72e2a7e956101bb5f6607f850172147af77e30d46cb7290475f2a8e4e20a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.2/toktrack-linux-arm64.tar.gz"
      sha256 "783deffa780e47eadbe86f313d9f881d38e3d6c1e33529b84d7b459c0a230ebb"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.2/toktrack-linux-x64.tar.gz"
      sha256 "dc8a0cc2772332a077e47a5e753593d5a1b52bf95d5dd7f29b60f6a98a4bd0fd"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

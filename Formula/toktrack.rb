class Toktrack < Formula
  desc "Ultra-fast token & cost tracker for AI CLIs (Claude, Codex, Gemini, OpenCode)"
  homepage "https://github.com/mag123c/toktrack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.4/toktrack-darwin-arm64.tar.gz"
      sha256 "9b770f087a08ca5d8ae746f4de0ea54153c3d203f9063c026152c779336b7549"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.4/toktrack-darwin-x64.tar.gz"
      sha256 "fa6af1c2fafd48d53e20d8ea64a2ab813eba0531f5c692a27dfd552c9367cf41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.4/toktrack-linux-arm64.tar.gz"
      sha256 "d5768d60e4e42acb557fb8b33df57fa45d35410d7a6acdaf35126aa8d295d8c4"
    end
    on_intel do
      url "https://github.com/mag123c/toktrack/releases/download/v2.7.4/toktrack-linux-x64.tar.gz"
      sha256 "e5bdfa76416574ae03d5c57d1b7404f21c5014762143599a95575ff4ace8ab89"
    end
  end

  def install
    bin.install "toktrack"
  end

  test do
    assert_match "toktrack", shell_output("#{bin}/toktrack --version")
  end
end

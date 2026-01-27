class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.2.0/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "159712fb75bf48fd383bd3e5f3f7710a739a51ada4bf31e75954d8054d6c468d"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.2.0/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "3b47441153f131d172e6db98b845c2068b6e12fb72639823fe6e104835b6b57e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.2.0/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c569fecba6d1c3b24e9ad5fdda6b342f45dfab2be7c58623864f51cb4840828"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.2.0/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d80c784d70a41052516377d9552e0c7e5799cf06d411a1fa668d98ab163d53bb"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm \#{version}", shell_output("\#{bin}/gwm --version")
  end
end

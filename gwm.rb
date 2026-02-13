class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.1/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "ff175f0560735cef7a6c52b7df068e24a6e24ee43b88bb0c1ceb0e7e63e2e70a"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.1/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "598a7103658545ce2a7fdd0dd2037b255b08d75277af3d670ad0bab113b94d7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.1/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91e7ecf868b763a99f1d63c2ce9a711bfafd67790703fce7cf7f41086fa7df50"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.1/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ab2903cbede72f02594c0f94571edd0222d0a5d75f3ea3494fa2ccee309040c"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm \#{version}", shell_output("\#{bin}/gwm --version")
  end
end

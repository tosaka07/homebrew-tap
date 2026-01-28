class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.3.0/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "cbb2cbba1b8e66e732d23581f569cb7d8ea28bab47aa58739f3a1020b5a70090"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.3.0/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "4b865a276e171e0266c2b3cfae7d416c94fd491c9f1890561b9f41924cd0e3f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.3.0/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1808ffbd1f2dba1d3c8b7eae2c16f2931f8ac765d8bdd3c758af07776bd3e75"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.3.0/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0b84de270220ed1a92c2ee30993e029e07efcb84c4d2a478230dd568ce8851a"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm \#{version}", shell_output("\#{bin}/gwm --version")
  end
end

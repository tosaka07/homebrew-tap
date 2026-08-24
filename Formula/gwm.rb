class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.5.0/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "5aba8e752b0da0eda523590ac5a7d89a531a62941cb815d4e667c2fb1063ec33"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.5.0/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "cfe01b759223c47867db2ab85a5d49721ff15e29a3c401576e6599bcf035bdf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.5.0/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06b6b04336c9c10fbc65701235100489f1401d88d96eee2c19e65a1303ca6833"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.5.0/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "071faf949ee86c45271fff240a3e1a0b2e8df800c98f2a80d54e5fa8bec7c281"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm \#{version}", shell_output("\#{bin}/gwm --version")
  end
end

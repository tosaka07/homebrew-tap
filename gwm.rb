class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.1/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "18bc60357321c7e0b81b9b7401c19d777412039d4d3170e7e197725a3229af62"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.1/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "4ab297a465ad0c9078135effaf6019cdcd1c31c039611b9822493de02b4db661"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.1/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a5a7537731e01dda482d59a7dee517a4134a15e814689943461d81b4e20d18c"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.1/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cfa4f6d30fae6bff56f71da1cc0ad09a62b5f5520fc9677343b7b6e7566440f"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm #{version}", shell_output("#{bin}/gwm --version")
  end
end

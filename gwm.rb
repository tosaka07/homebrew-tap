class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.0/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "1cc51c0077f447aa7f9aa636d0fb7710b28bea0628bb8d7c3b466962d7c89108"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.0/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "ed4363c1cc8941b5f51b8f35eaec398b809a43dc4daa89dc8b8b051f8278f8c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.0/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41a3aca7a994f0b41eb1145cb79e1716ad95b43daa13a4c1177851bc0fe43558"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.4.0/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a11f0a9e6370d3adc09af2de39976536f4fd02fa0106cca8ea8b9bb5b4e7ba4"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm \#{version}", shell_output("\#{bin}/gwm --version")
  end
end

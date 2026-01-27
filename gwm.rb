class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.3/gwm-aarch64-apple-darwin.tar.gz"
      sha256 "59d4a6e444d676e29042052fe6544daaddf52f6cb953d2e934f47d4ae79e18e5"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.3/gwm-x86_64-apple-darwin.tar.gz"
      sha256 "41deafe34f58b9bafc9e4136e45a4f75b547b6c30f26435471e50870abb4a414"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.3/gwm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98e5bda18d30301d9270b29835d69bc9786cd8eeb2679cfc0ad01f2eb38119c5"
    else
      url "https://github.com/tosaka07/gwm/releases/download/v0.1.3/gwm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abdf9b77325f7fe9e3b8fbf66cdb1960b034d6523bd97152ee8872de5752bb2f"
    end
  end

  def install
    bin.install "gwm"
  end

  test do
    assert_match "gwm \#{version}", shell_output("\#{bin}/gwm --version")
  end
end

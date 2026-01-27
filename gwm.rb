class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  url "https://github.com/tosaka07/gwm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7de0b9b3a044f2ac9a0f662b3e84c7002399894d19553af30492f1d3e0e6bc81"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gwm #{version}", shell_output("#{bin}/gwm --version")
  end
end

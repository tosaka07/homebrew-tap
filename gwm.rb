class Gwm < Formula
  desc "A fast and intuitive TUI application for managing git worktrees"
  homepage "https://github.com/tosaka07/gwm"
  url "https://github.com/tosaka07/gwm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "642446496d00a044e0218d46d036bef93b42ddf970c893262a73de6f379632b6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gwm #{version}", shell_output("#{bin}/gwm --version")
  end
end

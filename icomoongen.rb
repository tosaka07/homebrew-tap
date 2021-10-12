class Icomoongen < Formula
  desc "A command-line tool that generates type-safe code from IcoMoon font."
  homepage ""
  url "https://github.com/tosaka07/IcoMoonGen/archive/refs/tags/0.0.2.tar.gz"
  sha256 "471c2ff2bafbea451ec5d1e291144bdacab3be8db191a9041cd53b4f4609bcdd"
  license "MIT"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

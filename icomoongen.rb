class Icomoongen < Formula
  desc "A command-line tool that generates type-safe code from IcoMoon font."
  homepage ""
  url "https://github.com/tosaka07/IcoMoonGen/archive/refs/tags/0.0.1.tar.gz"
  sha256 "ae449e95dc26fa81720a43b2b16f277d698e1998bff2d9d12354460e7dbc6d93"
  license "MIT"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

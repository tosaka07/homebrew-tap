class XTrail < Formula
  desc "A command line tool to easily install and browse Xcode templates."
  homepage "https://github.com/tosaka07/XTrail"
  url "https://github.com/tosaka07/IcoMoonGen/archive/refs/tags/0.0.1.tar.gz"
  sha256 "dac68943359db990e4b069be056de230ef2da9dcae69319d3acd121d37aaac17"
  license "MIT"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

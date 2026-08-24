class Xtrail < Formula
  desc "A command line tool to easily install and browse Xcode templates."
  homepage "https://github.com/tosaka07/XTrail"
  url "https://github.com/tosaka07/XTrail/archive/refs/tags/0.0.2.tar.gz"
  sha256 "eebffc12fd1ecb9f06fef9b9a9ef6dc758eee3cfbefa4e97767fa378f2e27bd6"
  license "MIT"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

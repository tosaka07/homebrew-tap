class Xtrail < Formula
  desc "A command line tool to easily install and browse Xcode templates."
  homepage "https://github.com/tosaka07/XTrail"
  url "https://github.com/tosaka07/XTrail/archive/refs/tags/0.0.2.tar.gz"
  sha256 "c4ad8e23579c79bc7696f4ea4d2d2ab138bacc679c2a0882f82339936c936a06"
  license "MIT"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

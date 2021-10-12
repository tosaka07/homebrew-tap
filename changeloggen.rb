class Changeloggen < Formula
  desc "A command-line tool written in Swift that generates changelog"
  homepage "https://github.com/tosaka07/ChangelogGen"
  url "https://github.com/tosaka07/ChangelogGen/archive/0.0.4.tar.gz"
  sha256 "fbac8045e05439ea40ddadb2c023b7b39e4abee284ab2045c37b2b562c508a73"
  license "MIT"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

class Changeloggen < Formula
  desc "A command-line tool written in Swift that generates changelog"
  homepage "https://github.com/tosaka07/ChangelogGen"
  url "https://github.com/tosaka07/ChangelogGen/archive/0.0.5.tar.gz"
  sha256 "d0a21c55fc793fa6f3f8996fae46b01d986120500823913319631c825a48fd58"
  license "MIT"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

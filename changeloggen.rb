class Changeloggen < Formula
  desc "A command-line tool written in Swift that generates changelog"
  homepage "https://github.com/tosaka07/ChangelogGen"
  url "https://github.com/tosaka07/ChangelogGen/archive/0.0.3.tar.gz"
  sha256 "a1fd8aaa047783918286c0496816478b22d52a0f8124209c722b77478f0e5f54"
  license "MIT"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

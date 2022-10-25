class Tmatrix < Formula
  desc "Terminal based replica of the digital rain from The Matrix"
  homepage "https://github.com/M4444/TMatrix"
  url "https://github.com/M4444/TMatrix/archive/v1.4.tar.gz"
  sha256 "99591915fa83ceb98c31a97b5686a2df0d667c5d62f3e82837f76e5f9243710e"
  head "https://github.com/M4444/TMatrix.git", branch: "master"
  license "GPL-2.0-only"

  depends_on "cmake" => :build
  depends_on "ncurses"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/tmatrix", "--version"
  end
end

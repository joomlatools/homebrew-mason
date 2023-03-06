class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "1.3.0"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "50ad43046654e202524253357e54d406285c0e06dc066c794b5c0620b2e30029"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "7768a7a7a32a1585d34790fbe8ac05d5e25aa0b7d6d2501156416758c2ed4fb3"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

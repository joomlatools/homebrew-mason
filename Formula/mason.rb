class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.1.1"

  if OS.mac?
    url "http://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "ac52b63d6bb1a2f19e00296cae5893b51db7fd9233089fa970ddd718399c558a"
  elsif OS.linux?
    url "http://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "f0a123a4c63afb6a07889dbcb864e018aad1f91fee8bd7941c1fe84082581ac7"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

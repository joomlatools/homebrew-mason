class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.0.6"

  if OS.mac?
    url "http://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "79797c066ab8e819bed7682dacf94d293f0b36c06ac7fae1529c216f0e5bf089"
  elsif OS.linux?
    url "http://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "fbba3d3711f67536eddefeefcbaaf6b39428da06dd2e275e69825c7b7d79c804"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

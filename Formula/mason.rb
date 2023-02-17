class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "1.2.1"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "3ddf3149c2afff5a2f64e73eda864580fff60afb7a1f319d785837e15a10cd52"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "fd73a7de98b03d62ae945bce53d3cf6554fd64de58f0a99de01bdfbb89f90ba5"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

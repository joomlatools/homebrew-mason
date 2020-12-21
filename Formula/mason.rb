class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "1.1.1"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "6f6dc1a67b819e44537e07f047e8d312d8e3082cf8d861c99ba0ef31f50db065"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "0e666ea37889e5b511e156eb6a5cd354883e199844919bc23f373241089d3bc0"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

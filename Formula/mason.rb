class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "1.3.0"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "45020419709e68ce714bd45d6e2c3ecacc0c57f128f775a918286d837df5fb2d"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "842ac057563e478297e3a7242a465ba4fefce55fd071027ebdd5c1ca5ec5a5ff"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

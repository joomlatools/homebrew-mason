class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.1.1"

  if OS.mac?
    url "http://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "d157980ebdc6fef58c26b6dd89436208ee1601134fdc24f2a3d636d9f1e229f8"
  elsif OS.linux?
    url "http://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "4a4ae635a433b6836c57ff531e8e3aac4bce3e03c15fbb47953de04e00a23482"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

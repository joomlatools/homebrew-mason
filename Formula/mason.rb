class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.1.0"

  if OS.mac?
    url "http://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "38d904aea27d348aa817b6882ae5d62faa3c73f5e989b560a824d0875f3476b7"
  elsif OS.linux?
    url "http://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "3b0ddddd6d995f66a26cea2af2a98290a39264fa0faec082a35d83d1e9eb5e40"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

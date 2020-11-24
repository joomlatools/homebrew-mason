class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "1.1.0"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "d0ff4225b9d33c4d7aab86708e95cb7e6ef5a1cbf7960308a9baf70e6e382842"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "c6412d9766d400d76d11c373ce26edba6de52878d80817ec99e2113cb05911a8"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

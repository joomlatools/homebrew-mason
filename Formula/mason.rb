class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.1.1"

  if OS.mac?
    url "http://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "0bc2e4ea194905b9847531a0474f66a8a1935e654e7f33deda7e7bbaabf53899"
  elsif OS.linux?
    url "http://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "692ab12ee106d051f04872426e780430ea579eda951cf55173fb2b70f551c80a"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

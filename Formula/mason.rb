class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.1.7"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "d921bbf37f43201c820c018a63623cc921851fa6142439bd7d9a84bea009c98f"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "6162a2917b6ba51ff34b24d459b217ef2bca7b3e1d542b11aed5b1d90b724735"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

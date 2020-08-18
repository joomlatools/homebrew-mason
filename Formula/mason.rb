class Mason < Formula
  desc "General masonry"
  homepage "https://github.com/joomlatools/mason"

  version "0.1.5"

  if OS.mac?
    url "https://files.joomlatools.com/mason@#{version}/mason-macos.tar.gz"
    sha256 "8bfa4bc2ce02b572ff2a050b307f4233f1b80edc248d253554f8081d96d6da70"
  elsif OS.linux?
    url "https://files.joomlatools.com/mason@#{version}/mason-linux.tar.gz"
    sha256 "92d611117eb65766634ad0f8f3644806eda03246485be96db6ce575e059db369"
  end

  def install
    bin.install "mason"
  end

  test do
    version_output = shell_output("#{bin}/mason --version")

    assert_includes version_output, version
  end
end

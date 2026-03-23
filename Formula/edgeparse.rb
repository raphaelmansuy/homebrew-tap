class Edgeparse < Formula
  desc "High-performance PDF-to-structured-data extraction engine"
  homepage "https://github.com/raphaelmansuy/edgeparse"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgeparse/releases/download/v0.1.0/edgeparse-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "57c6683f975327f7244fe42681c9bbd96b52ac367a58630580d315357c33152a"
    else
      url "https://github.com/raphaelmansuy/edgeparse/releases/download/v0.1.0/edgeparse-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "87bec6a7ab6def8d72e86c8aa5db8af403e9700e9b5c2af013acdb61d33419ae"
    end
  end

  def install
    bin.install "edgeparse"
  end

  test do
    assert_match "edgeparse #{version}", shell_output("#{bin}/edgeparse --version")
  end
end

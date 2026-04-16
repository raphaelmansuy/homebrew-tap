class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.6.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "8259e5278d38fe523946417035457d544cf2da5f18361b9e3670adc28849fe10"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.6.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "6faa7b72ecc5f71df11392e4dace06eaf75f8ae1f0350ff3d44e4f9bf10d3caa"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

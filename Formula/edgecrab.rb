class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.5.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "33ff8c85e160b4ec568c1d510057909696c84e66d4616d9d81d310525af9f02e"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.5.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "79f650739031ccaa7d3c82908863a754620ffc13a8860e103c241e27af0e3bd0"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

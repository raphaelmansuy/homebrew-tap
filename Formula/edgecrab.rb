class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.12.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "0a018d0fbe1a550833f3d3e2dcb50fc44426e013a6a35b260230b4423e8963ce"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.12.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "c5efab45efc42d9ded646708602096c0247a6f143ab8fc5a31e3160f5ec15b97"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

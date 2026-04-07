class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.1.2/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "18aabad24b682abd2b3d3663cc10b682b11d719367ddcd91f74028dabe5e8da5"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.1.2/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "fdbc8e7b0c68954b250444d0d038402899c9ecc04087080ed20f47e6c45eb285"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match "EdgeCrab", shell_output("#{bin}/edgecrab --version")
  end
end

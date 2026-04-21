class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.8.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "7e4fe972a2a1bc0bb66835cbbd395d349d644bff3cb070ff894b1dee123c9c2b"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.8.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "2658202881c578e29f0fae27b0c3b3c1eb788cf490c103a10d6a9a210ab9cd2e"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.4.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "64eb190368dc65f6f93e419fe1b8fdbd512f36717841d83e79e17fd5e6665cf2"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.4.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "6fbe6bdd7b2e27f2aeb7ba83d5c884e7d92b2c431a2e7f6fddd502de97d3fa7b"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

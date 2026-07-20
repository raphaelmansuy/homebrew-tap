class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.11.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "bd505af50a9eb85c2b743f29adea9e56fe4a81ac28bcd9fa4d35ef12e0c205e7"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.11.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "e3d7c05d0879f1cfafa8416220008d0c3bd622234633f601ab45269fc316bbf1"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

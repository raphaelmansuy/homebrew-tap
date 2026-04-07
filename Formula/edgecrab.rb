class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.1.1/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "12c75561c0daae7212373b6cb8f409475122375739041ec3c7b386c2d259fad5"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.1.1/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "bf9085b94d457c133b2788c6ba0854e53acb8ba9a4177865bd3807f44b0b50d4"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match "EdgeCrab", shell_output("#{bin}/edgecrab --version")
  end
end

class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.10.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "7b384b6a510ccc921c5cae6005be334bf867dff085da84053f4871d11bb4cffa"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.10.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "99b0b2849075d375075f4ffe7196dec62c1d45d9c00ab1763fa5eba4a9a14f55"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

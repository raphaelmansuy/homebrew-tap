class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.11.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "72b4216e5e8e3c5b16b960bf1f1d9040189e521eb7510966b091f8881c52e2c8"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.11.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "fd0b8368bfbc52468e053a5316cdf948ec312b6c6957e1de49fce52b2dbccbcd"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

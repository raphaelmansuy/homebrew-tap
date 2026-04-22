class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.9.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "5561fee23f848ba0398798238f6bec85ba7de1fe11b2b86735b92f6038d8b00e"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.9.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "2800e3676c760722cafbf48dae6b7f3dbd18775f6c7ad78aa67b4c9e9fc9cd4d"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

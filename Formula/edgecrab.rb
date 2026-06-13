class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.10.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "739e9bccc10829d831e0149d553db3a7e40d191e768430824839bf89257821b4"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.10.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "6b2a5b90e1d7546fdf22067fd62e0f4a535c5d0f7bb7c45a8b4adb6ce21214be"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

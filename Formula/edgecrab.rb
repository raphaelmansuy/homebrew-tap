class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.7.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "cec3884bba2f806998dbce9f782f409205afc158be5fcba03e553459a37c2d00"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.7.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "fd6973b84d862bce358f5dec41bfc67f8513717d31d140191c72852bf277dba2"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

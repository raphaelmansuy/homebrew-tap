class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.4.1/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "85afe4c9955d8684e41956047ab671dfedf8367b91f379cad4b6b86d41ec143e"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.4.1/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "b43cfc9c6f64499cab1e03bdc41c49afff4231f24dc01e18c1961e98d3e35477"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

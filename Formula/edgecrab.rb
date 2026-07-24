class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.12.1/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "7cbb99c3067a10412327c53f96a25cb778de3690f28840327f8b7c00b61eb60c"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.12.1/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "770581d68729ce7d699d1ba359dbc2993173fabc7a54731e50b2de67334b9c94"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

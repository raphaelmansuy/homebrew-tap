class Edgecrab < Formula
  desc "AI-native terminal agent with 74+ tools, code execution, and 15 messaging gateways"
  homepage "https://github.com/raphaelmansuy/edgecrab"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.11.0/edgecrab-aarch64-apple-darwin.tar.gz"
      sha256 "19ed112fe49d693a2e3628eb1a7ac52095631d26cfd896155747536aa220a2c8"
    else
      url "https://github.com/raphaelmansuy/edgecrab/releases/download/v0.11.0/edgecrab-x86_64-apple-darwin.tar.gz"
      sha256 "08c8947c848fda8e8d7849c44e59a29a5f03e640a8e10a77c871b0d0c2e9afb4"
    end
  end

  def install
    bin.install "edgecrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgecrab --version")
  end
end

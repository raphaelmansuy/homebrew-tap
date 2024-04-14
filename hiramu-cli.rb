class HiramuCli < Formula
  desc "A CLI tool for interacting with LLMs"
  homepage "https://github.com/yourusername/hiramu-cli"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c311ec581e79d3773088126ca849e9c6283c52b5f0d3d4e6e00a9e66681f3301"
  license "Apache 2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end

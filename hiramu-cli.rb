class HiramuCli < Formula
  desc "A CLI tool for interacting with LLMs"
  homepage "https://github.com/raphaelmansuy/hiramu-cli"
  version "v0.1.7"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/#{version}.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256_HASH"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
class HiramuCli < Formula
  desc "A CLI tool for interacting with large language models"
  homepage "https://github.com/raphaelmansuy/hiramu-cli"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "06dd130228cb5f7798b2c3344bf5b1e1b1df5daa40f5893bb4a79c015f8ab55c"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"hiramu-cli", "completions")
  end

end

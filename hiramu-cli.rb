class HiramuCli < Formula
  desc "A CLI tool for interacting with large language models"
  homepage "https://github.com/raphaelmansuy/hiramu-cli"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/v0.1.21.tar.gz"
  sha256 "9f2e20582ad581d47d91694d81f44f42d7fb8fbe47d41a825e1697bb2b268c31"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"hiramu-cli", "completions")
  end

end

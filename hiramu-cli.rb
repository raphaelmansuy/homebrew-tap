class HiramuCli < Formula
  desc "A CLI tool for interacting with large language models"
  homepage "https://github.com/raphaelmansuy/hiramu-cli"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "167c6831d064e3238f9dd8112fc1773d65148e096481dc0e01ce8cb96ae3d285"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"hiramu-cli", "completions")
  end

end

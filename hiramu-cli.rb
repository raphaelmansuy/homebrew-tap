class HiramuCli < Formula
  desc "A CLI tool for interacting with large language models"
  homepage "https://github.com/raphaelmansuy/hiramu-cli"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"hiramu-cli", "completions")
  end

end

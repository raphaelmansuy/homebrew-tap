class HiramuCli < Formula
  desc "A CLI tool for interacting with large language models"
  homepage "https://github.com/raphaelmansuy/hiramu-cli"
  url "https://github.com/raphaelmansuy/hiramu-cli/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "8042ed4a64d9e26a27d3626e6688da8f6b34d4b95803aed41a82573a817bcf22"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"hiramu-cli", "completions")
  end

  test do
    output = shell_output("#{bin}/hiramu-cli prompt 'What is the capital of France?' -M haiku -m 10 -t 0.5")
    assert_match "Paris", output
  end
end

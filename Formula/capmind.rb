class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/cli-v0.2.6/cap-macOS"
  version "0.2.6"
  sha256 "8da4dd05e174f5210c05ef46a2b643447a2bfe1113bbd742e1a9508e2845c6fe"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "cap-macOS" => "cap"
    bin.install_symlink "cap" => "capmind"
  end

  test do
    output = shell_output("#{bin}/cap --help")
    assert_match "Usage:", output
  end
end

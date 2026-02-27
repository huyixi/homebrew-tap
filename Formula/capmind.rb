class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/cli-v0.2.7/cap-macOS"
  version "0.2.7"
  sha256 "71f72e1c89efbf949f5b42c0a6d7900cf372a64207d0a0055480370b209b1c2c"

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

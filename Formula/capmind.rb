class CapMind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/cli-v0.2.4/cap-macOS"
  version "0.2.4"
  sha256 "f922e79dcfc7e9b39c3989ea902646925a9c83296af2a476eb1db75e5b12ef53"

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

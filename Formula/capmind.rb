class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/capmind-v0.2.9/capmind-macOS"
  version "0.2.9"
  sha256 "f3b94a6af53a2af24da6545ef127456e58ddd0438e0b1124cf413212dbd79c7d"

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

class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/capmind-v0.4.0/capmind-macOS"
  version "0.4.0"
  sha256 "70d26d6407880153effa8dca50323e1e638a009baa57b0373e60286ff6980dab"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "capmind-macOS" => "cap"
    bin.install_symlink "cap" => "capmind"
  end

  test do
    output = shell_output("#{bin}/cap --help")
    assert_match "Usage:", output
  end
end

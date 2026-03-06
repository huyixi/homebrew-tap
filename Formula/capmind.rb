class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/capmind-v0.9.1/capmind-macOS"
  version "0.9.1"
  sha256 "c1a4e375ef6b227c81c6852f67135ba79d6547e76dc0448ff57817d4e38c0c7f"

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

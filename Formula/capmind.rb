class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/capmind-v0.8.1/capmind-macOS"
  version "0.8.1"
  sha256 "f471900a89a30c47da3f25072bc3d89d3677b47f5aaea82be8d6e562f518b6b4"

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

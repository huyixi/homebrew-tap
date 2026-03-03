class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/capmind-v0.3.0/capmind-macOS"
  version "0.3.0"
  sha256 "18de51fb39c8fc391027b06758ad92b81de96f6c3fcb0cad2137cb6bdadcdc51"

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

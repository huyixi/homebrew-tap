class CapMind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/cli-v0.2.5/cap-macOS"
  version "0.2.5"
  sha256 "fa305cbe7a4ffdce4ff3c9fc728a0b10954f83e5e5ebad2fc8437cb1092ab269"

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

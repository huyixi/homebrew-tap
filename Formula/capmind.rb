class Capmind < Formula
  desc "CLI client for capmind"
  homepage "https://github.com/huyixi/capmind"
  url "https://github.com/huyixi/capmind/releases/download/capmind-v0.6.0/capmind-macOS"
  version "0.6.0"
  sha256 "c8d02d202fb47fb3432f22d6553866c10466553cfb862d4e9f12fd5a4fb82963"

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

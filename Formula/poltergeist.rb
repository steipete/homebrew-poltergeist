class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v1.9.0/poltergeist-macos-universal-v1.9.0.tar.gz"
  sha256 "f51780ebc0b37bfb747167b9b2c98b5a4d30c9017becfc1a10373402c2ea4aaf"
  version "1.9.0"
  license "MIT"

  def install
    bin.install "poltergeist"
    bin.install "polter"
  end

  test do
    system "#{bin}/poltergeist", "--version"
    assert_match "1.9.0", shell_output("#{bin}/poltergeist --version")
  end
end

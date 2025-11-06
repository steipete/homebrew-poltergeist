class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v2.0.0/poltergeist-macos-universal-v2.0.0.tar.gz"
  sha256 "30c39602f19ae3d1248af9bebbedaf622ec5d4564abb3ea7cd041033dc997f78"
  version "2.0.0"
  license "MIT"

  def install
    bin.install "poltergeist"
    bin.install "polter"
  end

  test do
    system "#{bin}/poltergeist", "--version"
    assert_match "2.0.0", shell_output("#{bin}/poltergeist --version")
  end
end

class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v1.7.1/poltergeist-macos-universal-v1.7.1.tar.gz"
  sha256 "81ec79c0a2adfb74dd7eb110ad100f4b0abd94a115f5a91232ae00751bba6ae9"
  version "1.7.1"
  license "MIT"

  def install
    bin.install "poltergeist"
    bin.install "polter"
  end

  test do
    system "#{bin}/poltergeist", "--version"
    assert_match "1.7.1", shell_output("#{bin}/poltergeist --version")
  end
end
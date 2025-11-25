class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v2.1.1/poltergeist-macos-universal-v2.1.1.tar.gz"
  sha256 "8df2ace87a53f9d460e857ffbdfa067d6704c922eff2cffa0da9f1de58f1e31a"
  version "2.1.1"
  license "MIT"

  def install
    bin.install "poltergeist"
    bin.install "polter"
  end

  test do
    assert_match "2.1.1", shell_output("#{bin}/poltergeist --version")
  end
end

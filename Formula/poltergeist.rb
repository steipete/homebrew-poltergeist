class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v2.1.1/poltergeist-macos-universal-v2.1.1.tar.gz"
  sha256 "a654108db074415ed463b53765d85f019b0063fe66d06d44d56120326f9e964f"
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

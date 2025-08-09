class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v1.7.2/poltergeist-macos-universal-v1.7.2.tar.gz"
  sha256 "63f0fab888ab783c23f1e40a2a141901e3a80abebecfdcbf50ec3cdaf4fb4297"
  version "1.7.2"
  license "MIT"

  def install
    bin.install "poltergeist"
    bin.install "polter"
  end

  test do
    system "#{bin}/poltergeist", "--version"
    assert_match "1.7.2", shell_output("#{bin}/poltergeist --version")
  end
end
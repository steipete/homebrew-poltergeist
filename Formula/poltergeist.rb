class Poltergeist < Formula
  desc "Universal file watcher with auto-rebuild for any language or build system"
  homepage "https://github.com/steipete/poltergeist"
  url "https://github.com/steipete/poltergeist/releases/download/v1.7.0/poltergeist-macos-universal-v1.7.0.tar.gz"
  sha256 "2a1f63a90b3f7632f2c13a0d696beb5fec8c3567e3dc88750c673ddd11f1e59a"
  version "1.7.0"
  license "MIT"

  def install
    bin.install "poltergeist"
    bin.install "polter"
  end

  test do
    system "#{bin}/poltergeist", "--version"
    assert_match "1.7.0", shell_output("#{bin}/poltergeist --version")
  end
end
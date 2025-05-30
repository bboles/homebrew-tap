# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glids < Formula
  desc "glids - GitLab ID Lister"
  homepage "https://github.com/bboles/glids"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bboles/glids/releases/download/v0.3.3/glids_Darwin_x86_64.tar.gz"
      sha256 "1e6e2ecb3196fff27e9f54a022c09752df531ec78fc4eda1afee668922329134"

      def install
        bin.install "glids"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bboles/glids/releases/download/v0.3.3/glids_Darwin_arm64.tar.gz"
      sha256 "6ca149402483503eecdb6978e4b107be48113cbf7c9cb19927da00611e6d3c61"

      def install
        bin.install "glids"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/bboles/glids/releases/download/v0.3.3/glids_Linux_x86_64.tar.gz"
      sha256 "ccd992879b40ebc432fd61e684f18a0c9c9b6e14660c12b820ce29bc608de8a1"
      def install
        bin.install "glids"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/bboles/glids/releases/download/v0.3.3/glids_Linux_arm64.tar.gz"
      sha256 "e8c3e3fffa2f8259b80ba0dac259e74f60db1b2bfe9bb58aa6912c2665e82800"
      def install
        bin.install "glids"
      end
    end
  end

  test do
    system "#{bin}/glids --version"
  end
end

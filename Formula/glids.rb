# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glids < Formula
  desc "glids - GitLab ID Lister"
  homepage "https://github.com/bboles/glids"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bboles/glids/releases/download/v0.3.4/glids_Darwin_x86_64.tar.gz"
      sha256 "e1d72e747b0c40f1d5122c3898c6b11faea0e628792d716620f9361658ac0810"

      def install
        bin.install "glids"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bboles/glids/releases/download/v0.3.4/glids_Darwin_arm64.tar.gz"
      sha256 "c7c33d9722efb3ad48830c00fff07e3a685624089bebbccbb0180d5428d83fc5"

      def install
        bin.install "glids"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/bboles/glids/releases/download/v0.3.4/glids_Linux_x86_64.tar.gz"
      sha256 "acddc8fe58b6813c6be973495539557271361eee6afb47138fc1ca2e34d8fbf1"
      def install
        bin.install "glids"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/bboles/glids/releases/download/v0.3.4/glids_Linux_arm64.tar.gz"
      sha256 "98615078ab41c983b407387b148cfa71af514d22fd1b91d9996ea0af9a67e705"
      def install
        bin.install "glids"
      end
    end
  end

  test do
    system "#{bin}/glids --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Papercut < Formula
  desc ""
  homepage "https://github.com/lehigh-university-libraries/homebrew-papercut"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.3.1/homebrew-papercut_Darwin_x86_64.tar.gz"
      sha256 "fb3b6554e2e31cf5ab790ecfa5ae1c7486ca2dcac66384fa52303776a94cb00a"

      def install
        bin.install "papercut"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.3.1/homebrew-papercut_Darwin_arm64.tar.gz"
      sha256 "f09d09148860eaf94eb9246dedb2c5b85e8cda162961beca2401b6d6efaedb93"

      def install
        bin.install "papercut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.3.1/homebrew-papercut_Linux_arm64.tar.gz"
      sha256 "a86675f55e2839c0bc89d434ab1380e74e89f931af179fce991b21d469736139"

      def install
        bin.install "papercut"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.3.1/homebrew-papercut_Linux_x86_64.tar.gz"
      sha256 "255d53ccb2f8c6f4721ed4185081eef44daf7e7d6123f6bf4f65fbc9710885fc"

      def install
        bin.install "papercut"
      end
    end
  end
end

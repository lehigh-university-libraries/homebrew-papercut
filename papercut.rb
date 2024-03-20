# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Papercut < Formula
  desc ""
  homepage "https://github.com/lehigh-university-libraries/homebrew-papercut"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/v0.1.3/homebrew-papercut_Darwin_arm64.tar.gz"
      sha256 "d40b76bf336a344a055f9fa3a18b357fbc7f5b74926e0aa35dcf3461cbb34ad2"

      def install
        bin.install "papercut"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/v0.1.3/homebrew-papercut_Darwin_x86_64.tar.gz"
      sha256 "e621a2611f31da568556cd2d25ddb6e2af7062d763d79f7d4a21e12c3ed1528b"

      def install
        bin.install "papercut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/v0.1.3/homebrew-papercut_Linux_x86_64.tar.gz"
      sha256 "8df3cf65a55a448b4c2f1e2211431f7c6af7c99d777bda43fc21db4a9112c0d7"

      def install
        bin.install "papercut"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/v0.1.3/homebrew-papercut_Linux_arm64.tar.gz"
      sha256 "92afda201311f6da83c98056f1d62817549512c70f92754a3196a4ecf42b3529"

      def install
        bin.install "papercut"
      end
    end
  end
end

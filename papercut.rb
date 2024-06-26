# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Papercut < Formula
  desc ""
  homepage "https://github.com/lehigh-university-libraries/homebrew-papercut"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.4.1/homebrew-papercut_Darwin_x86_64.tar.gz"
      sha256 "b452248c432d79d1dfdc689e5161d5025b5c800e5d29e4529653a89717d5a718"

      def install
        bin.install "papercut"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.4.1/homebrew-papercut_Darwin_arm64.tar.gz"
      sha256 "62c083357e23ed03250b32b0ba4f609e39e8f63b7f799d8e473b56942c65e021"

      def install
        bin.install "papercut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.4.1/homebrew-papercut_Linux_x86_64.tar.gz"
      sha256 "0495e5d2794a06286404d7c3f1291fdb2dcfa9a9759359c7d341a4e635e6cd80"

      def install
        bin.install "papercut"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lehigh-university-libraries/homebrew-papercut/releases/download/0.4.1/homebrew-papercut_Linux_arm64.tar.gz"
      sha256 "2f26de70ce6d4b7720ee0398bc64cf52f6585bc740ab1a41fd2b5ca027d5e55e"

      def install
        bin.install "papercut"
      end
    end
  end
end

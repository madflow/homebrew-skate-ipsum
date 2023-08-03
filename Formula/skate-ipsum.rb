# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SkateIpsum < Formula
  desc "Skate Ipsum is a tool for generating random skateboarding related text."
  homepage "https://github.com/madflow/skate-ipsum"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/madflow/skate-ipsum/releases/download/v0.0.8/skate-ipsum_Darwin_x86_64.tar.gz"
      sha256 "4bc91daa2236c8158b518b2425609d108b74585803e185b0d3b16104371eba07"

      def install
        bin.install "skate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/madflow/skate-ipsum/releases/download/v0.0.8/skate-ipsum_Darwin_arm64.tar.gz"
      sha256 "0dc4dcf994ebd36ab6ed1cafe45a3426a97900d4ebadcbcafd5012d405877935"

      def install
        bin.install "skate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/madflow/skate-ipsum/releases/download/v0.0.8/skate-ipsum_Linux_arm64.tar.gz"
      sha256 "1106d837ea79f5befbfcb06bbc6516f8af7f90295fa1be52fb985e2ed6ecbacd"

      def install
        bin.install "skate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/madflow/skate-ipsum/releases/download/v0.0.8/skate-ipsum_Linux_x86_64.tar.gz"
      sha256 "2400672786142e00175d6e0c9bcf8588eeef998ffe156a3320530bb14f275189"

      def install
        bin.install "skate"
      end
    end
  end

  test do
    system "#{bin}/skate"
  end
end

class Cchain < Formula
  desc "CChain command-line tool"
  homepage "https://github.com/AspadaX/cchain"
  version "0.3.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-macOS-arm64.tar.gz"
      sha256 "2253f0718689631232aa132e76767aa24cc0d6730d6f2b89edb968c876160173" # 替换实际值
    else
      url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-macOS-x86_64.tar.gz"
      sha256 "2aa2539090e3fc69a4c288f0db00b674d9c24f3bd68ed34a54f1ee5ab16eb236" # 替换实际值
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-Linux-musl-x86_64.tar.gz"
        sha256 "0cc0d4c1de4292d317a243e9531982c60658e2a4a3fe4033e1747c06471a1384" # 替换实际值
      else
        url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-Linux-musl-i686.tar.gz"
        sha256 "254e76d74a5047c21f7686c973e30c951494317019a837ded4616544b6114f9b" # 替换实际值
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-Linux-musl-arm64.tar.gz"
        sha256 "3f24777e4e1bdeb6a2e19b9d8e76a25128e76c8263514f1891e02c3792aed850" # 替换实际值
      else
        url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-Linux-musleabi-arm.tar.gz"
        sha256 "dd40c39efdaf19665c948462790fbf64cea01c06c3fa6fa8c866f488bd4af4c7" # 替换实际值
      end
    end
  end

  def install
    bin.install "cchain"
  end

  test do
    system "#{bin}/cchain", "--version"
  end
end
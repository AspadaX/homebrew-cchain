class Cchain < Formula
  desc "CChain command-line tool"
  homepage "https://github.com/AspadaX/cchain"
  url "https://github.com/AspadaX/cchain/releases/download/v0.3.42/cchain-macOS-arm64.tar.gz" # 替换为实际二进制包地址
  sha256 "2253f0718689631232aa132e76767aa24cc0d6730d6f2b89edb968c876160173" # 替换为你的二进制包校验和
  version "0.3.42"
  
  def install
    bin.install "cchain"
  end

  test do
    system "#{bin}/cchain", "--version"
  end
end
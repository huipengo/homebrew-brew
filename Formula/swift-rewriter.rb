class SwiftRewriter < Formula
  desc "https://github.com/LuizZak/SwiftRewriter"
  homepage "https://github.com/huipengo/swift-rewriter"
  url "https://github.com/huipengo/swift-rewriter/releases/download/1.0.0/swift-rewriter-mac.tar.gz"
  sha256 "bde3c29d31576ad833d3e22c5ed2889589917a367b749977a7703e018fc99a43"
  version "1.0.0"
  def install
    bin.install "SwiftRewriter"
    bin.install Dir["*.framework"]
  end
  def caveats
    <<~EOS
    SwiftRewriter --help
    SwiftRewriter files --colorize --target stdout MyClass.h MyClass.m
    SwiftRewriter path /path/to/project/
    EOS
  end
end

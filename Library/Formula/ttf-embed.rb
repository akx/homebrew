class TtfEmbed < Formula
  desc "Change the embedding level of a TrueType font"
  homepage "http://carnage-melon.tom7.org/embed/"
  url "https://github.com/akx/ttf-embed/archive/ade066c4e87f0f4cbcef52b1b3a7c5c577de2d2c.tar.gz"
  version "ade066c"
  sha256 "49d6fc589bdbde5f64e908744e62fbf5ac231c24bf993a75fe059b8cbdd980e2"

  def install
    system "make"
    bin.install "ttf-embed"
  end

  test do
    system "#{bin}/ttf-embed | grep 'Use at your own risk'"
  end
end

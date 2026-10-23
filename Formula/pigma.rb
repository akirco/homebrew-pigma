class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.16/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "3fd697fdd78989685b594feb5ac56b11f653dacbfa2b1a1f52beeb8615e769ca"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.16/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "46f6d3f0b956e4e2ac728b264f6768023aaedac5a93bade0094901c585aa35e7"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.16/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f4a0becf7c06253392ec9b933e79035f93b707cfbf69b9ccce9c9f481386169c"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

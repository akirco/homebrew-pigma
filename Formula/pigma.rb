class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.6/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "39b6a708f2d0d0d7533693d2b1ee754ba38ebda7b824c83601e68d5566576cb1"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.6/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "80e5fc9392edcafc5218020092497917516046c6d8cfc5539802164765cc4da0"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.6/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1629b9adb39b3fe31d6a99e3e5872744e620c6400db508db137f747e91a513cc"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

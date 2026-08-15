class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.9/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "03c0c9c88266f57e0124c0bb7fd6525bc0ae439714fde8e70cca6adf257e7fa7"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.9/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "f395dde415f0e983efca309c29d4878daeab1e08b0a3bba4d174fb2b92152509"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.9/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4363db3219c7bb1bcffe8e87c03fa369ec5030dc6243806458c882acbbcbd8ec"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

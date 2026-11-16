class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.3.0/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "9638c6bd396caa9f0184988d16131afdaaceab5b1d60973f8a703747d6fe6f1d"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.3.0/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "49186b85bb9b461b2f3a778318231bb969df3fa3c83f4421c2c6ab5efd8b74f9"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.3.0/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d786e51c687744d65009bc0a8337a433720c67a742db8eb4e242d3a7eede093f"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.11/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "47453510509634ad06a42724d26773ac4beba41734bebcec56487b3e3e998c2a"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.11/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "a4bdd7f702643757ddb43ea266c5069f3498f09202c47221c01aa4a8252a71d7"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.11/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "acf74bd9036232d6d4e99368aa6872f9ee8e7a5d935140d5e41669f3ef4584fb"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

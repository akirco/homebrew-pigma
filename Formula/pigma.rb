class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.8/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "4646554a0e465a4e05b4b2486c9ed217fe269553d92fd92b27a8711896ba2e04"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.8/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "99eeb2197a16b050fece288c202809948358581c201ec8c679c5deffbb01a8eb"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.8/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e49d56a7683248334278c7b108161be7e41d1883c99d62c4c9a478a2f148d4c5"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

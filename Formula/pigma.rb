class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.7/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "e7b901dd7100282c431480b4f6e5d2ac0767dae3aab6960b7ab98c666341ac7d"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.7/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "eb96515de361259c50a98b9e63cdb8e7b00fe75640826ae5d3a38ada066a6d40"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.7/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5bb47859b791fa8526f5ecac80fd052cbb324d80f20a0bfd64d1ac54f721258f"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

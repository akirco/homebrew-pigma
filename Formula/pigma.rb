class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.14/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "711ee3763327f1ba158be764f4ac39ed412a4a77fc50b701fb8d02ee899a1029"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.14/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "db5d6c0b50c6d9f0ac253c78687b19d369405132fd0067c004342229111c4cb8"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.14/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "310fba0cc43dc56e36d1dba57c3676429d899be2a6000a30960907ec1259e5a1"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

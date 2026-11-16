class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.3.0/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "03602bc83cafeaaa179fbe1b04507b902f13bce56dd001eed9cb6f4d2be28f22"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.3.0/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "533cf131b34ddaad415c2d4e95e804203b10d6500500da7b8f28b807df8f33aa"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.3.0/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9f8952bc1a345087346a256119e0d394a0eab42238b4a83410919cf8088e24c"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

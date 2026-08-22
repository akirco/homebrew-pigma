class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.13/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "10896ae8619e9300c46adc5ae6f84fef29a6c9b41af0700d3427bfb9c18b1857"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.13/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "0e2cbce6a584b58ccf0545c34bc76d4bd89f0720e9eacd964d56cb31887b9e53"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.13/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0ce166cc2cae2504a522ef9114fd9b39cea2d59b30840868058b6b9aef53146c"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

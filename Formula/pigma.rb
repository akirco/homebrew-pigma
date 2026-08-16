class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.10/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "7ebea664ca446378fe48c9396263ed7228fe3376b94f6352f79bfb5be00a9fd1"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.10/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "eb77afecb19ca7393284edcdf84abb70e0a17a0c159d711d1efa618f607e4d15"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.10/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "34b309dbef7d5b09067e73e674d64e6f574172fd59a496f245e361c0439d05c5"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

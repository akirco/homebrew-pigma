class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.12/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "f2e6dfd8be4fb5b0a2a4bc4a140fcd9051da9d10c3bf38b1cbf88232aa6b262a"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.12/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "1cad8fa7cb5791ee74c6cb1dd52c0a3d13c0332a20c5b60107ebab2ce95a7ce3"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.12/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2a1a30627a7c92bb539edc28aa0827b510a6b102b0b66fcb94b2b0e6912c61b2"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "0.2.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/v0.2.15/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "b83da73ce71c9df558f4f1a6b233535aabeed4389746c4544b4900ed23b7e52b"
    else
      url "https://github.com/akirco/pigma/releases/download/v0.2.15/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "7dfd3b58daccb21749e69e1c66ff56b83a56efc8d17643c31fa5bf0e86998283"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/v0.2.15/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1cbaa8713cb23a655e544230d11d28e2164131889663f052e4674686f8667b42"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end

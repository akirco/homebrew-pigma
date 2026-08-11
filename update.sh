#!/usr/bin/env bash
# Update Formula/pigma.rb for a new pigma release.
#
# Usage: ./update.sh v0.2.7
set -euo pipefail

VERSION="${1:?usage: ./update.sh v0.2.7}"
REPO="akirco/pigma"
TAG="v${VERSION#v}"
DIR="$(cd "$(dirname "$0")" && pwd)"
FORMULA="$DIR/Formula/pigma.rb"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

need_sha() {
  local asset="$1"
  curl -fsSL -o "$TMP/$(basename "$asset")" \
    "https://github.com/${REPO}/releases/download/${TAG}/${asset}"
  sha256sum "$TMP/$(basename "$asset")" | awk '{print $1}'
}

AARCH64=$(need_sha "pigma-aarch64-apple-darwin.tar.gz")
X86_64=$(need_sha "pigma-x86_64-apple-darwin.tar.gz")
LINUX=$(need_sha "pigma-x86_64-unknown-linux-gnu.tar.gz")

cat > "$FORMULA" <<EOF
class Pigma < Formula
  desc "A netease cloud music client"
  homepage "https://github.com/akirco/pigma"
  version "${VERSION#v}"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akirco/pigma/releases/download/${TAG}/pigma-aarch64-apple-darwin.tar.gz"
      sha256 "${AARCH64}"
    else
      url "https://github.com/akirco/pigma/releases/download/${TAG}/pigma-x86_64-apple-darwin.tar.gz"
      sha256 "${X86_64}"
    end
  end

  on_linux do
    url "https://github.com/akirco/pigma/releases/download/${TAG}/pigma-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "${LINUX}"
  end

  def install
    bin.install "pigma"
  end

  test do
    assert_predicate bin/"pigma", :executable?
  end
end
EOF

echo "Updated ${FORMULA} to ${TAG}"

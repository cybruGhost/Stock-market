require "formula"

class stockmarket < Formula
  homepage "https://github.com/cybruGhost/Stock-market"
  head     "https://github.com/cybruGhost/Stock-market.git"
  url      "https://github.com/cybruGhost/Stock-market/archive/refs/tags/v1.0.0.tar.gz"
  sha1     "bc666ec165d08b43134f7ec0bf29083ad5466243" # Needs updating.

  depends_on "go" => :build

  def install
    system "go", "get", "github.com/nsf/termbox-go"
    system "go build cmdStock-market.go"
    bin.install "stockmarket"
  end
end

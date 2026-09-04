class Trellis < Formula
  desc "Mermaid-compatible diagram renderer with overlap-free orthogonal edge routing"
  homepage "https://github.com/trellis-lab/trellis"
  version "1.7.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trellis-lab/trellis/releases/download/v1.7.0/trellis-v1.7.0-macos-aarch64"
      sha256 "3280968f55182be253789d5267d2c4c8c5f5e38147fbd874ca491d4737b079af"
    else
      url "https://github.com/trellis-lab/trellis/releases/download/v1.7.0/trellis-v1.7.0-macos-x86_64"
      sha256 "b27db34f056b8e11dbe03b21ac2b04024308a1854c4715fc9562e2a0de063bee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trellis-lab/trellis/releases/download/v1.7.0/trellis-v1.7.0-linux-x86_64"
      sha256 "e6f924699e86aaf7e19459b49e10150d00f93e4993473a7c5701da077bb7013d"
    end
  end

  def install
    bin.install Dir["trellis-v*"].first => "trellis"
  end

  test do
    system "#{bin}/trellis", "--version"
  end
end

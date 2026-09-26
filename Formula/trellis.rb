class Trellis < Formula
  desc "Mermaid-compatible diagram renderer with overlap-free orthogonal edge routing"
  homepage "https://github.com/trellis-lab/trellis"
  version "1.8.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trellis-lab/trellis/releases/download/v1.8.1/trellis-v1.8.1-macos-aarch64"
      sha256 "1a4f9de09fa085a2d82f51f8ba02fabfbe16089430e052e07fdb2a5e13b9102d"
    else
      url "https://github.com/trellis-lab/trellis/releases/download/v1.8.1/trellis-v1.8.1-macos-x86_64"
      sha256 "90dd7af02097ba47deea8c30235f1118139982fe92f85643db639aa973b9e377"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trellis-lab/trellis/releases/download/v1.8.1/trellis-v1.8.1-linux-x86_64"
      sha256 "64f7a1bdf198b71d51bf785424abf4f81238346264ff9aeafb937da7a7e91f5e"
    end
  end

  def install
    bin.install Dir["trellis-v*"].first => "trellis"
  end

  test do
    system "#{bin}/trellis", "--version"
  end
end

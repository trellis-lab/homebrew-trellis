class Trellis < Formula
  desc "Mermaid-compatible diagram renderer with overlap-free orthogonal edge routing"
  homepage "https://github.com/trellis-lab/trellis"
  version "1.9.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trellis-lab/trellis/releases/download/v1.9.0/trellis-v1.9.0-macos-aarch64"
      sha256 "7032af9ed265754f0e1d4296cd865f65da6234b34c1a3580880d9e9766c7caee"
    else
      url "https://github.com/trellis-lab/trellis/releases/download/v1.9.0/trellis-v1.9.0-macos-x86_64"
      sha256 "a2b8a23574c362277ff481eba26538527feb03e35bc391355ec52e3f3896e2ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trellis-lab/trellis/releases/download/v1.9.0/trellis-v1.9.0-linux-x86_64"
      sha256 "dc87c32ea39a21c7335f852188bd7d2b6db26ee64ff6992213570f2d981e2df8"
    end
  end

  def install
    bin.install Dir["trellis-v*"].first => "trellis"
  end

  test do
    system "#{bin}/trellis", "--version"
  end
end

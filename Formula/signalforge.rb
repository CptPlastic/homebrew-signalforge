class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.3/signalforge-darwin-arm64.tar.gz"
      sha256 "f77de916473598d8ac3a1708aa07a0d3ec9a20547e2cc2e7fcf4543dd3627648"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.3/signalforge-darwin-amd64.tar.gz"
      sha256 "528d52595548e6110bb1a8c51add63e170cefaa8ffbdfb87d486e594e0a652c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.3/signalforge-linux-arm64.tar.gz"
      sha256 "0d3a159b958f72a509a8ae7c3167428b2518380bea7f717dbc60d73278d34727"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.3/signalforge-linux-amd64.tar.gz"
      sha256 "9404a05eb6747760ca1aa9c156ef879d52d1ebdc615763462d0ef21de41507d3"
    end
  end

  def install
    bin.install "signalforge", "sf"
  end

  test do
    assert_match "signalforge", shell_output("#{bin}/signalforge version")
    assert_match "signalforge", shell_output("#{bin}/sf version")
  end
end

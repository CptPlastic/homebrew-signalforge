class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.2/signalforge-darwin-arm64.tar.gz"
      sha256 "18880da87e36a6d34b6bd4db4137669f95c2a6099b558295da64dc88f0d78d43"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.2/signalforge-darwin-amd64.tar.gz"
      sha256 "ab248abbf754d95a7b1587e145be35c73e3eb0456e0030e661695d27fe23e029"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.2/signalforge-linux-arm64.tar.gz"
      sha256 "d1f25cabc17966bb06bf7d43da3b091b3a40e84c84ea9aa90d3a7fafe96b1f8c"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.2/signalforge-linux-amd64.tar.gz"
      sha256 "b4082c6d10948389b3562b2d57424ce857ab3c3660b57a7f765343d2f40c239c"
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

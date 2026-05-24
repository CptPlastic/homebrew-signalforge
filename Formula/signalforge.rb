class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.7/signalforge-darwin-arm64.tar.gz"
      sha256 "8165fe2affbdc8306f1e0668657c955beae85a1ee686daab6158e136e184948f"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.7/signalforge-darwin-amd64.tar.gz"
      sha256 "be92e078bb942668ebb9573b488d0bc9c91ce716c9151ff26fb642a2bac43b48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.7/signalforge-linux-arm64.tar.gz"
      sha256 "fb9d849e3366cc3715607cae8d99e428485769a824222c6fa716a17f95aa4cca"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.7/signalforge-linux-amd64.tar.gz"
      sha256 "8c6f0fcd6bcd278690ddf458203d21282e616adc45770d8f1839b5732554be05"
    end
  end

  def install
    bin.install "signalforge"
  end

  test do
    assert_match "signalforge", shell_output("#{bin}/signalforge version")
  end
end

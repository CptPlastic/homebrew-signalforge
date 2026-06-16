class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.6/signalforge-darwin-arm64.tar.gz"
      sha256 "72c3e411d3cfc5211bfd9561c930f1a727f0a6b0d0985d5a564f9b3f461a4338"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.6/signalforge-darwin-amd64.tar.gz"
      sha256 "939377269a70272de5f0c23354c5fca1ea987f00610b1db49c917153de355498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.6/signalforge-linux-arm64.tar.gz"
      sha256 "bd37e88e3f4425246a443cda682213bb01d345bb2e0e84cec5367931f61bc840"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.6/signalforge-linux-amd64.tar.gz"
      sha256 "fd83f99e90b30f12124ee319e19968b8724a841d52cbb2b49a02aa9dd90bfea4"
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

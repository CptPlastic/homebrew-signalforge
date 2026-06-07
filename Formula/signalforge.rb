class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.1/signalforge-darwin-arm64.tar.gz"
      sha256 "f5b031a95a8a9d68d03106f4f45fef1285bd250e6a1a17efd5676ad0d0ccbadb"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.1/signalforge-darwin-amd64.tar.gz"
      sha256 "230aa4bbb80821269a23850b0c5a54f8f95ea86ffb257b552d4740788bee8aaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.1/signalforge-linux-arm64.tar.gz"
      sha256 "cc0cd0d7fe05d98d68fb789c44079b055eef12d1cbe7a8bfdad555af0c93c970"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.1/signalforge-linux-amd64.tar.gz"
      sha256 "787084f3be5456e573b16d3a379568c0bdfc5213661c2a646dd7aa0263fe8a34"
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

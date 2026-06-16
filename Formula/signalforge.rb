class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.1/signalforge-darwin-arm64.tar.gz"
      sha256 "b75d93c2a78c4ef8762036976056880dc1e8cf161b8ddb0ebd3ba92fa660b816"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.1/signalforge-darwin-amd64.tar.gz"
      sha256 "aa2e200e70815cb15c50467155664c36bfc6bd73ab7fc865c9c717d279b11f79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.1/signalforge-linux-arm64.tar.gz"
      sha256 "dc55e80055bd7b9161e845359d8ecd408cdb27342a1395bf083f91dd0a022a70"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.1/signalforge-linux-amd64.tar.gz"
      sha256 "bc5da9964d79e50bf8648098ffa17988da6e05ae174bcd42d00bca19083af672"
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

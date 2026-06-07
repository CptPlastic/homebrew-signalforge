class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.0/signalforge-darwin-arm64.tar.gz"
      sha256 "45f571d37e1c79be80a885c41f0afa6a562e4b975e1c85db0ae82d08d2a6c33d"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.0/signalforge-darwin-amd64.tar.gz"
      sha256 "0a8e8d5d40c00a92cb8edb57afc9fabf597a564e45b8ccd4f87b6c7dcd61fe4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.0/signalforge-linux-arm64.tar.gz"
      sha256 "317266e5eb27a191cb4d3896ec6e20c9e296a3a8f5fd516637c1d2b9229752ed"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.0/signalforge-linux-amd64.tar.gz"
      sha256 "ed15113292d78474bf931eccbbd9dfab02c2406ed9600b6e7c71b1badcb58873"
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

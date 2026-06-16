class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.6/signalforge-darwin-arm64.tar.gz"
      sha256 "125b787109fdcd484c7e2a4b30a506d349ae30dbd01fa5ef743dccd82912d7bc"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.6/signalforge-darwin-amd64.tar.gz"
      sha256 "af30997bb5489e8ae12f7b0a42d4622348bfb601b9fa4697df128de6b487311c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.6/signalforge-linux-arm64.tar.gz"
      sha256 "e8dce56bf18d1e5c9ad53e04c7af0f41e7947864b69f2663365571380baa67cb"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.6/signalforge-linux-amd64.tar.gz"
      sha256 "4d597787f84b0a8266301a7b28641aaaf4beae38ca7afd33ff10498f6f851c0d"
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

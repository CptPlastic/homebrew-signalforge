class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.5/signalforge-darwin-arm64.tar.gz"
      sha256 "f3a7982e0928cf263c76c8e40df23201d099afad61277504d9d5f38dd7f6bb97"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.5/signalforge-darwin-amd64.tar.gz"
      sha256 "1afa7d589ef8168b38cd647924c4f042880f61dea6ba50e82fc35eac2c61eb82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.5/signalforge-linux-arm64.tar.gz"
      sha256 "61c87d8fbe8c350a73931625bd5d9d40bbef90c72145fa4b17eeeee7fbe84eb0"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.5/signalforge-linux-amd64.tar.gz"
      sha256 "a176df483ea9d324e46a0a895cede91cc1ff6937a3e5a5f4a059745003eff82b"
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

class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.7/signalforge-darwin-arm64.tar.gz"
      sha256 "9b4218e5f493cdd227f564a5c60894784333934d1b95753bbbf1b4789ef82721"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.7/signalforge-darwin-amd64.tar.gz"
      sha256 "165431f657618e4ac3c0f5929245125e75c22557d370828ae9a78886a4407905"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.7/signalforge-linux-arm64.tar.gz"
      sha256 "9d535c2335e37a7c30c3dc57e4f71361a12c3b3dbde0500dfedcbfd40f63c86a"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.7/signalforge-linux-amd64.tar.gz"
      sha256 "94fa4299b761be80b301d7c7d9f52e863da63fe7b7bd224d9a738c8be0c2bc9b"
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

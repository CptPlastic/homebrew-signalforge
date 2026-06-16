class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.8"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.8/signalforge-darwin-arm64.tar.gz"
      sha256 "3109d220878afbaa574d7acdfdae1308a694967949d1b08cfea28e62e55e0d1e"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.8/signalforge-darwin-amd64.tar.gz"
      sha256 "6bdc61549d735a020972106346b00672d09450515527d889662770d409389196"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.8/signalforge-linux-arm64.tar.gz"
      sha256 "f37dd29a004277428ee03599916ef8efbfd701557169c80f59c191dfe2b723c1"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.8/signalforge-linux-amd64.tar.gz"
      sha256 "e31b7484e8e2333f0ec56e0bf9f48b8a01b2eed57f069a087ad9303f2dde5a89"
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

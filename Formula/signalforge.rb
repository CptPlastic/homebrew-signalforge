class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.5/signalforge-darwin-arm64.tar.gz"
      sha256 "3ed3aeecda70314ae16acf4af3917f397134e0f7846b69df7eeb6876420c2eea"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.5/signalforge-darwin-amd64.tar.gz"
      sha256 "ac7ec9f620027277886404412b13ce2e92aed5cea864530677b273bbcfd8f2e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.5/signalforge-linux-arm64.tar.gz"
      sha256 "3f796bc6400c2c3bed5d6c5f3be28ce0bf7700577d94c11ffe287ec76d4c550d"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.5/signalforge-linux-amd64.tar.gz"
      sha256 "57a17f203075d008936c77b976cf6387e91e220d9bcdaf33597b2aa6705abf99"
    end
  end

  def install
    bin.install "signalforge"
  end

  test do
    assert_match "signalforge", shell_output("#{bin}/signalforge version")
  end
end

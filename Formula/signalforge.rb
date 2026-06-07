class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.4/signalforge-darwin-arm64.tar.gz"
      sha256 "70b7bafddbcef0659731db3b7fe9def5073678bfd93a61a0efb15394b406d25c"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.4/signalforge-darwin-amd64.tar.gz"
      sha256 "01f2e50aafd77736944ad3c23be4b48aaca70341de4133f40bb98c4922385a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.4/signalforge-linux-arm64.tar.gz"
      sha256 "0825e35e638e5f5b43526049446dfb3f7d937133f4891990139e229b0202ef40"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.4/signalforge-linux-amd64.tar.gz"
      sha256 "5089abd42635ec415617b998f2ce5bb8ab044ead477b7bba45941b048c4bcc5f"
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

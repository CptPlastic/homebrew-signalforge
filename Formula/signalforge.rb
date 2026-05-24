class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.3/signalforge-darwin-arm64.tar.gz"
      sha256 "d5e26415b43f24b10c4d9ea965ba1f0eb6cbe760ca0dadf4a78fe5d1c33e0c27"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.3/signalforge-darwin-amd64.tar.gz"
      sha256 "fab6aa56d4d21dcf3b561469628a11509071f4af04e28f33f9bd4c730c1b2164"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.3/signalforge-linux-arm64.tar.gz"
      sha256 "afbae895bb67e6f26f01a0fb87e48e482b08cde87108bf5c3ac19961f220ed52"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.3/signalforge-linux-amd64.tar.gz"
      sha256 "ffe878bfc5d9168d01fb4b33472a8095b591b6b451337354e620b5b22d3d09ea"
    end
  end

  def install
    bin.install "signalforge"
  end

  test do
    assert_match "signalforge", shell_output("#{bin}/signalforge version")
  end
end

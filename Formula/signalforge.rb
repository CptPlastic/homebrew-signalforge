class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.6/signalforge-darwin-arm64.tar.gz"
      sha256 "f553cd4c5c0c569e1ec4b558f06b6202aa10098cf74ca9a5be6d1d980fbc9e16"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.6/signalforge-darwin-amd64.tar.gz"
      sha256 "2d8d0798d7a4258d7f858b9ecd021e4a61f84237dd016a2ef03b4fb0a0176380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.6/signalforge-linux-arm64.tar.gz"
      sha256 "26aacecbdfbcc8a154055630b7806c71d7caa88b6c2e21fa019a685672c990c4"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.6/signalforge-linux-amd64.tar.gz"
      sha256 "c7111bdffec54cf87b9ba4f4b49e241d1dfab360a8937bd68363640c7b9a82e7"
    end
  end

  def install
    bin.install "signalforge"
  end

  test do
    assert_match "signalforge", shell_output("#{bin}/signalforge version")
  end
end

class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.4/signalforge-darwin-arm64.tar.gz"
      sha256 "9e4cdc0c644f2be819d66ea6931299bcc092f9e25b0d8ae6d203c29462d7e959"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.4/signalforge-darwin-amd64.tar.gz"
      sha256 "bb8b889406ea2f9d40019917016db73beffbd99b125c064c041474d9bb53af2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.4/signalforge-linux-arm64.tar.gz"
      sha256 "4732ae999dc2997d08e7388e427ca7064e75c17e191d79ecfb93da770184eabc"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.4/signalforge-linux-amd64.tar.gz"
      sha256 "7b2883b414c87c3590091753ce758de9501a954f85e251b3996d2142a8a977a5"
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

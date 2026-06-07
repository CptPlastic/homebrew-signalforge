class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.5/signalforge-darwin-arm64.tar.gz"
      sha256 "fccc0ae735ebde3694afaa8e3970b4598352acdabeae90bfece96813c26e0068"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.5/signalforge-darwin-amd64.tar.gz"
      sha256 "bc3ff80ca70a6da48dae963596b30588eee473a6389c05670422ac7c1f10ff0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.5/signalforge-linux-arm64.tar.gz"
      sha256 "22e4026d407fc853a1442cf60576e9a08687149ce11b8b5aef640065ba0e7e42"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.5/signalforge-linux-amd64.tar.gz"
      sha256 "045446cc74fe90586d1280511b9cd428e75fc46b1db0e770a1c56e9efc98007c"
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

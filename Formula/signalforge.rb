class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.9/signalforge-darwin-arm64.tar.gz"
      sha256 "c3d1af989fd14350f7b84026f3c266772bf4b9a56a24bf6c6ea8a9b852d1c20c"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.9/signalforge-darwin-amd64.tar.gz"
      sha256 "5bd67dfb01502e34ca1df8d5c10ff69e5d2f1d469a6cd4a222650035c45e5676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.9/signalforge-linux-arm64.tar.gz"
      sha256 "1454608222c0ff6c3fc202c78a563dff83f9547988f764d75149af35df7b695e"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.9/signalforge-linux-amd64.tar.gz"
      sha256 "3fe3ba378bcb84745509509af2e66f26e2875d9d27525d1b188a4df8c413810b"
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

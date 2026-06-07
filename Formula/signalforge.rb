class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.2/signalforge-darwin-arm64.tar.gz"
      sha256 "19d9b4dc8ba0355a95e6fb8624599bee4639f439080ddf8f7db5d4c8f2f38cef"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.2/signalforge-darwin-amd64.tar.gz"
      sha256 "4c9046be0e5513298fb5b615c714fa93bd934d210798ae6a5a90d37418a83854"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.2/signalforge-linux-arm64.tar.gz"
      sha256 "a79f028fb96618baa17f3e688fe3d05a4b5124cbe736c7349da36bed7459afa7"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.2/signalforge-linux-amd64.tar.gz"
      sha256 "f6f21c62136d2dd7f3a9353afd3716aba7c763585eb2b4799299afc1e73864ad"
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

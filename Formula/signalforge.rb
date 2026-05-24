class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.4/signalforge-darwin-arm64.tar.gz"
      sha256 "377087ba92aec2685e4a3c4edfbb976c6e7a130124b663556d879926c0df8266"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.4/signalforge-darwin-amd64.tar.gz"
      sha256 "02f3965f9431b30eb00001acc8d071b75e07085a0ab7d7961d75656b578e430d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.4/signalforge-linux-arm64.tar.gz"
      sha256 "4a8eaa90d87014a5c21f010d7126e5dd32472f06d08ae9fc7f29db5f6c305f60"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.4/signalforge-linux-amd64.tar.gz"
      sha256 "a372a70885d64ef5d7a00a5c1bc212f706f4e99ccc662554b5349e15df01f238"
    end
  end

  def install
    bin.install "signalforge"
  end

  test do
    assert_match "signalforge", shell_output("#{bin}/signalforge version")
  end
end

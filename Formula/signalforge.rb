class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.0/signalforge-darwin-arm64.tar.gz"
      sha256 "a274a6b64d8361e7f2db1e379294199262d018c0a657cac92a99d0863e24fd68"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.0/signalforge-darwin-amd64.tar.gz"
      sha256 "6b3ccde5adce8835c1bcbc1ccef508dc74f7eb6bef63ec264eb1a3e61acb899b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.0/signalforge-linux-arm64.tar.gz"
      sha256 "6747172c354cd4c1e30868e859d149ab67d230742fdb9910899d29e65881f88a"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.3.0/signalforge-linux-amd64.tar.gz"
      sha256 "54d23bae671f057e4de8df64e0be743cadda54280baf25946bc96f48c8f8468a"
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

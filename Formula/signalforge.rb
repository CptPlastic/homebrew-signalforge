class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.7/signalforge-darwin-arm64.tar.gz"
      sha256 "08518bac6ba7ade0337901e477f802d7893d95151e9e0c2f46b5597c766d3f68"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.7/signalforge-darwin-amd64.tar.gz"
      sha256 "57937740612c4071f8df822e3a2f42ff61e8b72ea55443225872cc90d94d0a7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.7/signalforge-linux-arm64.tar.gz"
      sha256 "e97175976596087c535214a742961220d6b308649442cba1535671f6d86b6032"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.7/signalforge-linux-amd64.tar.gz"
      sha256 "e1f3897637603446677cd8261e8a4baeea1c25f81d8f8a1d66b595e7ce9b2386"
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

class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.9/signalforge-darwin-arm64.tar.gz"
      sha256 "d43d3a0028e1ed4ea1727097d757ad899bec1ad446675a390dc045ede341aa9f"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.9/signalforge-darwin-amd64.tar.gz"
      sha256 "b75a8a9b1be8451275adfe7d8b289645c10d77f48d547f9d70d1b545d37c216c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.9/signalforge-linux-arm64.tar.gz"
      sha256 "6e7c458c5b9672147bc83bdfde549bd3d87e9f790cf95620cd3b3432085bb743"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.2.9/signalforge-linux-amd64.tar.gz"
      sha256 "2a3178f9ec780724b4b981aa3bab79b7683770ae9d1161e258c86ac5741e0ea0"
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

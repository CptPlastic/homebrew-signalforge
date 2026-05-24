class Signalforge < Formula
  desc "SignalForge CLI recorder for SignalForge Hub"
  homepage "https://signalforge.org"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.8/signalforge-darwin-arm64.tar.gz"
      sha256 "65fbca929a5fb200d5ba31319cec9c96a65b10f8c8aca2bc0d0ebbca61a980c7"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.8/signalforge-darwin-amd64.tar.gz"
      sha256 "555b818f5b6cb931b7b93a99cd99590ad0296d3a5dc88866b8ff887badffe240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.8/signalforge-linux-arm64.tar.gz"
      sha256 "3de3932df9429fc0c32305eb2611810ca45cff89a44e8d5607da08640534c831"
    end

    on_intel do
      url "https://github.com/CptPlastic/signalforge.org/releases/download/signalforge-cli-v0.1.8/signalforge-linux-amd64.tar.gz"
      sha256 "dc4d935b909b9235e49931a6df272b1d66c6de75c93bceb2d58f42f45ee6742e"
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

class Ai < Formula
  desc "AI shell assistant — turn natural language into shell commands"
  homepage "https://github.com/hra42/ai"
  version "0.1.2"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://github.com/hra42/ai/releases/download/v0.1.2/ai_darwin_arm64.tar.gz"
      sha256 "e7695070889ebb0072d0b7285ca0a230f73bb9e54de029453225fd3aaed19c7d"
    end
    on_intel do
      url "https://github.com/hra42/ai/releases/download/v0.1.2/ai_darwin_amd64.tar.gz"
      sha256 "399a2a2b69c38388c047e54c3153470b562da77b70d4474dd1ae731830b023c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hra42/ai/releases/download/v0.1.2/ai_linux_arm64.tar.gz"
      sha256 "04db8496ad26863469a5ef1f7ee1483d9b26eb8c8cc5f933a11e9dfc07533e64"
    end
    on_intel do
      url "https://github.com/hra42/ai/releases/download/v0.1.2/ai_linux_amd64.tar.gz"
      sha256 "40a6961dc8e86244f1bc9ffec33ff86a2ba11d127cf68d641b7cc28dbd505e31"
    end
  end

  def install
    bin.install "ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai --version")
  end
end

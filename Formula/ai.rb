class Ai < Formula
  desc "AI shell assistant — turn natural language into shell commands"
  homepage "https://github.com/hra42/ai"
  url "https://github.com/hra42/ai/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "5582f7638f631c1ba0eeb495b5f195532e177a69dcd3014f5738f853c1c6b787"
  license "Unlicense"
  head "https://github.com/hra42/ai.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=brew
      -X main.date=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags.join(" "))
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai --version")
  end
end

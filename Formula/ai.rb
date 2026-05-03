class Ai < Formula
  desc "AI shell assistant — turn natural language into shell commands"
  homepage "https://github.com/hra42/ai"
  url "https://github.com/hra42/ai/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "0e129377388d0225c827b763737a74232989f45e854e8bc9c1e2c338946c68e3"
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

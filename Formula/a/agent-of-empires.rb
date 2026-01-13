class AgentOfEmpires < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://njbrake.github.io/agent-of-empires/"
  url "https://github.com/njbrake/agent-of-empires/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8faf43c55986da09cf821e45a86382ec7fa659f63fb1a8c5c3e0669a3300cb61"
  license "MIT"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "session manager", shell_output("#{bin}/aoe --help")
  end
end

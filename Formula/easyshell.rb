class Easyshell < Formula
  desc "Command line tool for beginners - makes terminal operations easy and friendly"
  homepage "https://github.com/liuyanlong1345-create/easy-shell"
  url "https://github.com/liuyanlong1345-create/easy-shell/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c5928fb286d64a6223205332d5a611e180d0c2c722f39cb39dfee67d42ed8585"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "easyshell", "main.go"
    bin.install "easyshell"
  end

  test do
    assert_match "EasyShell", shell_output("#{bin}/easyshell --version 2>&1", 0)
  end
end
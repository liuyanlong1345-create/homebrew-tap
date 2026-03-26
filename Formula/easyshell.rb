class Easyshell < Formula
  desc "Command line tool for beginners - makes terminal operations easy and friendly"
  homepage "https://github.com/liuyanlong1345-create/easy-shell"
  url "https://github.com/liuyanlong1345-create/easy-shell/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f36bc336c1aa01b73689e9b68003fdb3c5179d8a6a0a897e1f44a3b82e9b8773"
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
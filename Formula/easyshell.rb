class Easyshell < Formula
  desc "Command line tool for beginners - makes terminal operations easy and friendly"
  homepage "https://github.com/liuliuyanlong/easy-shell"
  url "https://github.com/liuliuyanlong/easy-shell/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "placeholder" # 后续需要计算实际的 SHA256 值
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
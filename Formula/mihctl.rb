class Mihctl < Formula
  desc "Companion CLI for managing Mihomo providers and config generation"
  homepage "https://github.com/phenix3443/mihctl"
  version "v0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.0/mihctl_v0.1.0_darwin_arm64.tar.gz"
      sha256 "4397487075669cdd3283ac67e604cc29f6435c1336f879af86bfd43bd48dc6c5"
    end
    on_intel do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.0/mihctl_v0.1.0_darwin_amd64.tar.gz"
      sha256 "b9a8d5bd09c7b21d9cfb54f93f44f30cf7da7e7f4a6761a5c74f0edcc067bb6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.0/mihctl_v0.1.0_linux_arm64.tar.gz"
      sha256 "952000617f0f67843b43573bba0c46d1cf2fccae70b2d04cfbd3df3c40b5c0dd"
    end
    on_intel do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.0/mihctl_v0.1.0_linux_amd64.tar.gz"
      sha256 "b4c4e32efb2ffcd2819285fd380da59fcf2fd5c64b1de8425d098d5da08188cf"
    end
  end

  def install
    bin.install "mihctl"
    pkgshare.install Dir["config/*"]
  end

  test do
    assert_match "Companion CLI for managing Mihomo", shell_output("#{bin}/mihctl --help")
  end
end

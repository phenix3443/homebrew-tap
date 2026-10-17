class Mihctl < Formula
  desc "Companion CLI for managing Mihomo providers and config generation"
  homepage "https://github.com/phenix3443/mihctl"
  version "v0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.1/mihctl_v0.1.1_darwin_arm64.tar.gz"
      sha256 "bff0158ed6406a3045e83907cc54996e9fc378f3e5b9c721837040cb38062e78"
    end
    on_intel do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.1/mihctl_v0.1.1_darwin_amd64.tar.gz"
      sha256 "1349d1e1c63de12a0779088d54d2136ad47229b90038dccf670299442a191ac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.1/mihctl_v0.1.1_linux_arm64.tar.gz"
      sha256 "ef69232e753a71246f89e31319871373d304218205a8fe12783df09cd96ba130"
    end
    on_intel do
      url "https://github.com/phenix3443/mihctl/releases/download/v0.1.1/mihctl_v0.1.1_linux_amd64.tar.gz"
      sha256 "6ff4a0dcb894b1d518725551ba648094a623a4cd88a33286a3e41ba2eb7572c8"
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

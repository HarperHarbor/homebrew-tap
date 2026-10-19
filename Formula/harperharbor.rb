class Harperharbor < Formula
  desc "Command-line client for HarperHarbor administrators"
  homepage "https://harperharbor.com"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli.harperharbor.com/releases/v0.2.1/harperharbor_0.2.1_darwin_arm64.tar.gz"
      sha256 "ea7f85d25151ab30e137d752c7110a21ed93e759d2f07d8a56719d072fa7d77a"
    else
      url "https://cli.harperharbor.com/releases/v0.2.1/harperharbor_0.2.1_darwin_amd64.tar.gz"
      sha256 "dee5e8d8ef7ac8b5ddba5d432dd4b128593339ac1dc42b91dc23e8ff020e152c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli.harperharbor.com/releases/v0.2.1/harperharbor_0.2.1_linux_arm64.tar.gz"
      sha256 "d6e91166a40cda402b826ea151215e6493d3683afd9017b393903850c4546400"
    else
      url "https://cli.harperharbor.com/releases/v0.2.1/harperharbor_0.2.1_linux_amd64.tar.gz"
      sha256 "6b3ac7166eb937a815538e95901dd1a9f5d1234eb462c9d959e12ad1c8de554b"
    end
  end

  def install
    bin.install "harperharbor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/harperharbor version")
  end
end

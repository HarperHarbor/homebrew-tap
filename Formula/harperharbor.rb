class Harperharbor < Formula
  desc "Command-line client for HarperHarbor administrators"
  homepage "https://harperharbor.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli.harperharbor.com/releases/v0.1.0/harperharbor_0.1.0_darwin_arm64.tar.gz"
      sha256 "4ac7bd05b1156ffb607795bdcd5f53db7eacdfbe6c233218c1c687d2d74ccf09"
    else
      url "https://cli.harperharbor.com/releases/v0.1.0/harperharbor_0.1.0_darwin_amd64.tar.gz"
      sha256 "8b182aac6b5f55a39a72eed9fbb463470e66944434909529ee03dfe067134936"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli.harperharbor.com/releases/v0.1.0/harperharbor_0.1.0_linux_arm64.tar.gz"
      sha256 "20a84522fe056e03c29bc8519c15826a88f5879edf1418d3934401dcd9825edf"
    else
      url "https://cli.harperharbor.com/releases/v0.1.0/harperharbor_0.1.0_linux_amd64.tar.gz"
      sha256 "dbdc95ed18daae6e28ecdadbb74bd82371ac1600291aca66cb56cf6fd268daba"
    end
  end

  def install
    bin.install "harperharbor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/harperharbor version")
  end
end

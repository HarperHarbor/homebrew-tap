class Harperharbor < Formula
  desc "Command-line client for HarperHarbor administrators"
  homepage "https://harperharbor.com"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cli.harperharbor.com/releases/v0.2.0/harperharbor_0.2.0_darwin_arm64.tar.gz"
      sha256 "3290f080789c80266a13be470038c58dbb9179736ebcfa4d1ac6b745e9152961"
    else
      url "https://cli.harperharbor.com/releases/v0.2.0/harperharbor_0.2.0_darwin_amd64.tar.gz"
      sha256 "fbf54ee8d6ec76efdb0ceb1cfb65cb53a6650f9441b8134800735cbb913a9f4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://cli.harperharbor.com/releases/v0.2.0/harperharbor_0.2.0_linux_arm64.tar.gz"
      sha256 "d3ed883e9b36376dcd71456e8c5234449e38121d5322b1d40a7a9a4b4c187cbb"
    else
      url "https://cli.harperharbor.com/releases/v0.2.0/harperharbor_0.2.0_linux_amd64.tar.gz"
      sha256 "ea2d7321f32f1992a1fef64395721507ab4d3a262c6b5f09e2140a29c304a401"
    end
  end

  def install
    bin.install "harperharbor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/harperharbor version")
  end
end

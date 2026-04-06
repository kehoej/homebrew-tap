class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_darwin_arm64.tar.gz"
      sha256 "ea725e6a6d68cf87022176ff9699843de7a1b29acb45cbf1bd302c592d39308b"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_darwin_amd64.tar.gz"
      sha256 "56d1bf785753042ea7f699934ea4facb88f574e9a866ba131d0184bf3924b694"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_linux_arm64.tar.gz"
      sha256 "64690af50c72501a25edc0241d491754d17cdcc4e5327caea47cae61c24bc0a3"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_linux_amd64.tar.gz"
      sha256 "5f414a074f78fbcf27a714efd7edb9961c2352dbba72576110045651bd70e49c"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

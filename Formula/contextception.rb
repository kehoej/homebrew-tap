class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.8/contextception_darwin_arm64.tar.gz"
      sha256 "27fc15ba775f51991361aa66a3faa1dcb9e27d53b99daf1de573fa08c1926d29"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.8/contextception_darwin_amd64.tar.gz"
      sha256 "41e19b284486be52d1745310b43c0c47b4429925360cc452da106299596bafd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.8/contextception_linux_arm64.tar.gz"
      sha256 "c2627230846f56ae19a74d121c86bccd352546e2a8c63c82e52fdbc9934aa2fa"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.8/contextception_linux_amd64.tar.gz"
      sha256 "1093c7755a7ac72b884b87dcf1880a38f921441760ccc605fcebfa4a5ab49e2d"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

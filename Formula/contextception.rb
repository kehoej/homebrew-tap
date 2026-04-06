class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_darwin_arm64.tar.gz"
      sha256 "a46cdd81606ef327ecc5add80f9c0879750aa7fce58f6fe6d94e12d3ca986a5f"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_darwin_amd64.tar.gz"
      sha256 "dc8195658df76e5b5d7fcbf8eff19cd3bbd153b9c84caf52ea8911de90b040e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_linux_arm64.tar.gz"
      sha256 "4f03da2c4979a0ece6381f7039e3e4b68e9fe7ee4a131261645208099628abb2"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.0/contextception_linux_amd64.tar.gz"
      sha256 "c571b4e9ce33ba865961de5d98f5ed5e7772ccde42d5f5a9e1d1ed292ca56a40"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

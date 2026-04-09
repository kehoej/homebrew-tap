class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.6/contextception_darwin_arm64.tar.gz"
      sha256 "5a504263b1cedaae0d2466a2d4aba67db3670c8cfc5896873b92715c70a69485"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.6/contextception_darwin_amd64.tar.gz"
      sha256 "41120aba2fd8b5e0d471e91fe16b9d561c64317795a6aac52de108fb2d78ec5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.6/contextception_linux_arm64.tar.gz"
      sha256 "93bfcfe852a2d11a09dbe8e47afa0405d19585e3f488ac80e44e8436d00e993f"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.6/contextception_linux_amd64.tar.gz"
      sha256 "eb1efc20e8c50bd5df178320aba85ab580f91a2eb8e18c43ed5bb9b6958bd862"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

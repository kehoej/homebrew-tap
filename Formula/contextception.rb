class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.3/contextception_darwin_arm64.tar.gz"
      sha256 "a80cdfc14c74462e99b9ccef5053c947c8e6e1b7cf98b0c2859a0a1a00635a1f"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.3/contextception_darwin_amd64.tar.gz"
      sha256 "9e728a5eeec16605414c85c4013c3a4c2ba2cdc3c970fda4aca615ba1d44d123"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.3/contextception_linux_arm64.tar.gz"
      sha256 "7a41227a2663f2fa9f5d86c807b889f7fc32e2cb0b2f917fac61f36b529f434f"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.3/contextception_linux_amd64.tar.gz"
      sha256 "41db29ccc0e7fcc1fbe837c1271a16e669ced2edb95960004808e71d6d286d86"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

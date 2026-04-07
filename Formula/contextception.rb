class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_darwin_arm64.tar.gz"
      sha256 "4ef1586101970437636861cd8ac96b0b3fd89e84850e056fab0f74f696afdcd9"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_darwin_amd64.tar.gz"
      sha256 "c43323061a5a0fe54d8ead4a90ea942b600dc0d405b3d11da88ae5a6450e6196"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_linux_arm64.tar.gz"
      sha256 "423215a59d456787bd2b320001de599ad9cf28b0c26f05fec96d96cd606bbf53"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_linux_amd64.tar.gz"
      sha256 "c1f62fa1dbacf5a714fc736e4c914ab66abd27573dd4a85197ff12c625aa77aa"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

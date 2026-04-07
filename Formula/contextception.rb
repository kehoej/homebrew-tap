class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_darwin_arm64.tar.gz"
      sha256 "92ab3cb3e92f94711183cc739e1c318905ca2138d49044668e22b9b66dc3fd21"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_darwin_amd64.tar.gz"
      sha256 "3ddd47860c11474bfe4f0516e894ec1385428685d26e70083334042e2ad7ddc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_linux_arm64.tar.gz"
      sha256 "f2e35f2bc110d9b9720310e6ae4bd953f38a27201eb019de72c999e193609b0a"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.2/contextception_linux_amd64.tar.gz"
      sha256 "de872c4400c3ea95be1e108d18b046890113ff56881ebe2a2bc627c4d20f5831"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.5/contextception_darwin_arm64.tar.gz"
      sha256 "82cc661fec845f2a2b1797a2b8f8a5bf70eb47a55af0435e575bdc2726ca756f"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.5/contextception_darwin_amd64.tar.gz"
      sha256 "ab8cc955320c21eaf4cb69e41ec8ee9fef78f4fddc3cf1dd5471c9fbe63c8d3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.5/contextception_linux_arm64.tar.gz"
      sha256 "4527f86b00c836a4a691702c20dfdd253b8c214462b3c198f93258131ffe8668"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.5/contextception_linux_amd64.tar.gz"
      sha256 "e1fe1bb2a08abb77ad17b4ad94bf7202092161cc6c8d7dc265fbcac84469b8cb"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.4/contextception_darwin_arm64.tar.gz"
      sha256 "3f39a45dfb8e27121fa0395b42d35bd06763d302089be011b9fe87fb8a85e5d1"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.4/contextception_darwin_amd64.tar.gz"
      sha256 "f42d6314a4af769b7a7975fff4c427d066eca7b21b366a2225a5dededa9282e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.4/contextception_linux_arm64.tar.gz"
      sha256 "dd85478c11e99e462a2a0b336a8c4dcd42d04b0dadcdbb9759fddb71c8a63425"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.4/contextception_linux_amd64.tar.gz"
      sha256 "0dea01c20b614b5838147b2a27f08bc661c718deebb4cb7142aaee21d5c1ece6"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

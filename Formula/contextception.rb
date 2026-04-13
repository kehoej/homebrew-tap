class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.7/contextception_darwin_arm64.tar.gz"
      sha256 "9f98f3d37fa5d543e4c335611e693747a4d423606be1b2204f1c2058d5b00c88"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.7/contextception_darwin_amd64.tar.gz"
      sha256 "e313c02bba28ea1f7dc182462af3286b5af8d6c79b8742559c5a471570c37bff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.7/contextception_linux_arm64.tar.gz"
      sha256 "feb323e083acbbcf63883dcd7190b235320dd5e248cbca1e7cfd59390a9d244f"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.7/contextception_linux_amd64.tar.gz"
      sha256 "7566a9447deb243d5e2ffcdb0ce8d66a57ff072983ec9a05dfa980dda7fdf0ee"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

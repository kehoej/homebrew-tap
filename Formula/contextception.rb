class Contextception < Formula
  desc "Deterministic context intelligence for code. Know what must be understood before making a safe change."
  homepage "https://github.com/kehoej/contextception"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.1/contextception_darwin_arm64.tar.gz"
      sha256 "31423f403ef7fddc7b53d696021fef668720d67561b2f80f28b6f9913d238a19"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.1/contextception_darwin_amd64.tar.gz"
      sha256 "a41716e6a626097e4745d540ad56ac0a7ca14bc71f66d5a2fd1272600e02a00a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kehoej/contextception/releases/download/v1.0.1/contextception_linux_arm64.tar.gz"
      sha256 "17dd217587db06f981ca46c99a168f24be84afc085f7ece54394956fc5653cbf"
    else
      url "https://github.com/kehoej/contextception/releases/download/v1.0.1/contextception_linux_amd64.tar.gz"
      sha256 "0be357523d3c8a003d5bbb8fd1aff7738262e88790dacacb8929261fe13fd289"
    end
  end

  def install
    bin.install "contextception"
  end

  test do
    system "#{bin}/contextception", "--version"
  end
end

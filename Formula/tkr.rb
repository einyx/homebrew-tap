class Tkr < Formula
  desc "Token-optimized CLI proxy for LLM development workflows"
  homepage "https://github.com/einyx/tkr"
  license "Apache-2.0"
  version "0.2.15"

  on_macos do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-apple-darwin.tar.gz"
      sha256 "bf0f6cbcf06fc277bdc4190a4c80129ec3083f01fd065b53021a1cb12640d0b2"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-apple-darwin.tar.gz"
      sha256 "e0ba29c064367a8fde73a40035cee54512f48379730400b07e534466be52e107"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f603fa121f8a0dd450ea7451fb473273b7b18705539e5a24acefce96aa4b268"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a9b8221102164076a051340627a57e5666e83ae3f800832beb87cdd8106870c"
    end
  end

  def install
    bin.install "tkr"
  end

  test do
    assert_match "tkr", shell_output("#{bin}/tkr --help")
  end
end

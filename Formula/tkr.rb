class Tkr < Formula
  desc "Token-optimized CLI proxy for LLM development workflows"
  homepage "https://github.com/einyx/tkr"
  license "Apache-2.0"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-apple-darwin.tar.gz"
      sha256 "f59ea836fa97bb4728678da46a821b4326af07ecf6c8be2f9b4d3eac0605a76f"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-apple-darwin.tar.gz"
      sha256 "9581eaa6851bf4c6aca844a0c132e4f3aa7cb56f34569b5a31fbd7e00f8a5a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54965e96aba9e2e61e7c2eb5bdd53893b60af1e991482c20d8281beb5a83a0b7"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55d6ba5f05e436537c673974f2b26b5a1b2864166a9a8ec9f08252d5ad27e04d"
    end
  end

  def install
    bin.install "tkr"
  end

  test do
    assert_match "tkr", shell_output("#{bin}/tkr --help")
  end
end

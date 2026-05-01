class Tkr < Formula
  desc "Token-optimized CLI proxy for LLM development workflows"
  homepage "https://github.com/einyx/tkr"
  license "Apache-2.0"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-apple-darwin.tar.gz"
      sha256 "cd5cff12db43ed20a5ad9b9d280ae527963011090b12cebdea9c7cd4402c238c"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-apple-darwin.tar.gz"
      sha256 "ffbac0745787d837b0c10a466d98b9ec5ee0a96fe014a4f18849969aefc943fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d45bc34a6784f9aa9d0ee0dffbd367eca2ae9604661520592cea6d668051ee6"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b43648108f52bbcb87d7ec052e8fb23c4c24cbe8a510ab5d9019e637ac9d4df1"
    end
  end

  def install
    bin.install "tkr"
  end

  test do
    assert_match "tkr", shell_output("#{bin}/tkr --help")
  end
end

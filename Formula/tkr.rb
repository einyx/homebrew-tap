class Tkr < Formula
  desc "Token-optimized CLI proxy for LLM development workflows"
  homepage "https://github.com/einyx/tkr"
  license "Apache-2.0"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-apple-darwin.tar.gz"
      sha256 "25e838b627e01bcecaa29fa01d6e1ebe7a105e7c12fc65c9c9896d4d2f572d6e"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-apple-darwin.tar.gz"
      sha256 "a1d3b69efdfa202f160d9f4359fd728b9adb34e89a065d1da2e71b21b552b916"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d20c67f2fdba22422a111d4c96ac923657f9dc98e5ef404e8f509c2fac69efa"
    end
    on_intel do
      url "https://github.com/einyx/tkr/releases/download/v#{version}/tkr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fd19f25104e013b05c70e848f997a630feff2aee91e513dfaf2ff268222bf8b"
    end
  end

  def install
    bin.install "tkr"
  end

  test do
    assert_match "tkr", shell_output("#{bin}/tkr --help")
  end
end

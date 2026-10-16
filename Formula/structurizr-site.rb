class StructurizrSite < Formula
  desc "Static-site generator for C4 architecture models from Structurizr DSL"
  homepage "https://github.com/dirkgroot/structurizr-site"
  version "0.0.1-pre-alpha1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v#{version}/structurizr-site-aarch64-apple-darwin.tar.gz"
      sha256 "5bb03e17fc7ff874360f196e67756d7a472848dd9c97b6fa4db5a5477605977b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v#{version}/structurizr-site-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16805a0bff487de06c729ee560cab58c28b7f8f3be8d2ccf47cc6fcf36f1b3a7"
    end
  end

  def install
    bin.install "structurizr-site"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/structurizr-site --version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end

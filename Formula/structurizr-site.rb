class StructurizrSite < Formula
  desc "Static site generator for Structurizr workspaces"
  homepage "https://github.com/dirkgroot/structurizr-site"
  version "0.2.0-pre-alpha.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.6/structurizr-site-darwin-arm64"
      sha256 "9a51b0478dacdbce65136627db84c87f0f0bba10cb5b2720d3c5358c73868015"
    end

    on_intel do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.6/structurizr-site-darwin-x64"
      sha256 "1b7d20e77ae74ba461c098bb154eb54ebdf4ce1c1aee36d73d44cf4878da7169"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.6/structurizr-site-linux-arm64"
      sha256 "70ed21498209cc24f36ff3540ef9934a9430b19259f87e92b219257295217be2"
    end

    on_intel do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.6/structurizr-site-linux-x64"
      sha256 "544d9158700e120fa1d0707faac0f3c4594d927a355d4ab6a90b94984a27b71f"
    end
  end

  def install
    bin.install Dir["structurizr-site-*"].first => "structurizr-site"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/structurizr-site --version")
  end
end

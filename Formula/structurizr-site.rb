class StructurizrSite < Formula
  desc "Static site generator for Structurizr workspaces"
  homepage "https://github.com/dirkgroot/structurizr-site"
  version "0.2.0-pre-alpha.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.4/structurizr-site-darwin-arm64"
      sha256 "148fbdd68754ed0fb4ab68279e6339a13b0baa9ec466c01c2649e2fbac9babe5"
    end

    on_intel do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.4/structurizr-site-darwin-x64"
      sha256 "1182f573e78239efcb152c4a2b7b5054e3f8ce4584ff3b2602830a4942c29d4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.4/structurizr-site-linux-arm64"
      sha256 "f53616e5db27dd2da0d0e8440c5fdd84447ae7cbb0c8a8bc5486aeeff54bd5f5"
    end

    on_intel do
      url "https://github.com/dirkgroot/structurizr-site/releases/download/v0.2.0-pre-alpha.4/structurizr-site-linux-x64"
      sha256 "c9fdd22b392d34a9f2bfc671f795fbbd1884b0d8bd5533cb56bff217f49c1517"
    end
  end

  def install
    bin.install Dir["structurizr-site-*"].first => "structurizr-site"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/structurizr-site --version")
  end
end

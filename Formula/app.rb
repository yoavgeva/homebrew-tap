class App < Formula
  desc "Ferret - local pipelines"
  homepage "https://github.com/salesforce/ferret"
  url "https://github.com/yoavgeva/ferret/releases/download/v1.0.13/ferret-1.0.13-osx-x86_64.zip"
  version "1.0.13"
  sha256 "edbfa68f3d041b21fbb6118b746cb87eb2b1dcf99e95756c3c47d11e103d5327"
  license "BSD 3-Clause"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.13", output
  end
end
# Generated with JReleaser 1.3.1 at 2022-11-06T08:20:25.474689+02:00
class Ferret < Formula
  desc "Ferret - local pipelines"
  homepage "https://github.com/salesforce/ferret"
  url "https://github.com/yoavgeva/ferret/releases/download/v1.0.13/ferret-1.0.13-osx-x86_64.zip"
  version "1.0.13"
  sha256 "608cfbfd75e63b9cd0e10461ace35c6b923df1b06bd5755ff6c1e8453eb7f363"
  license "BSD 3-Clause"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ferret" => "ferret"
  end

  test do
    output = shell_output("#{bin}/ferret --version")
    assert_contains "1.0.12", output
  end
end

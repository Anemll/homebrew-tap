class AnemllProfile < Formula
  desc "ANE (Apple Neural Engine) CostModel profiler for CoreML models"
  homepage "https://github.com/Anemll/anemll-profile"
  url "https://github.com/Anemll/anemll-profile/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9e62faeac4a99cba130a01e7eb07c6667cdde8834b35678a91af8ddb285c4801"
  license "MIT"

  depends_on :macos
  depends_on :xcode => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/anemll-profile 2>&1", 1)
  end
end

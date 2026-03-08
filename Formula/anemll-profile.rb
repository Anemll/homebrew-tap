class AnemllProfile < Formula
  desc "ANE (Apple Neural Engine) CostModel profiler for CoreML models"
  homepage "https://github.com/Anemll/anemll-profile"
  url "https://github.com/Anemll/anemll-profile/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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

class AnemllProfile < Formula
  desc "ANE (Apple Neural Engine) CostModel profiler for CoreML models"
  homepage "https://github.com/Anemll/anemll-profile"
  url "https://github.com/Anemll/anemll-profile/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "b2383de91edc3346540372db156dfdc3b0742ccd5520f1eee138409ffaf25688"
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

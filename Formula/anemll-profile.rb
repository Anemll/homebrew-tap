class AnemllProfile < Formula
  desc "ANE (Apple Neural Engine) CostModel profiler for CoreML models"
  homepage "https://github.com/Anemll/anemll-profile"
  url "https://github.com/Anemll/anemll-profile/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e51af2f4eea0238737e2a8ce5c9fee2c180b792c314d443e621d488e177cbe14"
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

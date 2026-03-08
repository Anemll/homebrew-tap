class AnemllProfile < Formula
  desc "ANE (Apple Neural Engine) CostModel profiler for CoreML models"
  homepage "https://github.com/Anemll/anemll-profile"
  url "https://github.com/Anemll/anemll-profile/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b0722bb5287b1fe5eadb722d9ce3d8e1f1609531073488d99f485531179127c8"
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

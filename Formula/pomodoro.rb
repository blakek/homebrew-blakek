class Pomodoro < Formula
  desc "🍅 A simple terminal-based pomodoro timer"
  homepage "https://github.com/blakek/pomodoro"
  url "https://github.com/blakek/pomodoro/archive/v1.0.0.tar.gz"
  sha256 "b1593911b9f763ef84655fade0895f2d542b174af31e38de8bef211658d0b67d"

  depends_on "vlang" => :build

  def install
    system "make"
    bin.install "pomodoro"
  end

  test do
    system "#{bin}/pomodoro --help"
  end
end

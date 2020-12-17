class Pomodoro < Formula
  desc "🍅 A simple terminal-based pomodoro timer"
  homepage "https://github.com/blakek/pomodoro"
  url "https://github.com/blakek/pomodoro/archive/v2.0.0.tar.gz"
  sha256 "2291a8f2598d27354ec53d8a96a67dc80c8d4785264c5d9443f8bbf94ff11195"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "pomodoro"
  end

  test do
    system "#{bin}/pomodoro --help"
  end
end

class Pomodoro < Formula
  desc "🍅 A simple terminal-based pomodoro timer"
  homepage "https://github.com/blakek/pomodoro"
  url "https://github.com/blakek/pomodoro/archive/v2.0.0.tar.gz"
  sha256 "e9443f583f62dd58653b321676aa0735a9e9973e1606a0c42adcdae575eda404"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "pomodoro"
  end

  test do
    system "#{bin}/pomodoro --help"
  end
end

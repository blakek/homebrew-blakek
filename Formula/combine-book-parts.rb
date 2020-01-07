class CombineBookParts < Formula
  desc "Combine audiobooks parts into one MP3"
  homepage "https://github.com/blakek/combine-book-parts"
  head "https://github.com/blakek/combine-book-parts.git"

  def install
    system "make"
    bin.install "combine-book-parts"
  end

  test do
    # TODO: update when testable
    system "false"
  end
end

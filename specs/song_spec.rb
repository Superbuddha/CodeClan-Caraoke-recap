require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')


class TestSong <MiniTest::Test

  def setup
    @song1 = Song.new("Teenage Wasteland")
    @song2 = Song.new("Beastly")
    @song3 = Song.new("Time Bending")
    @songs = [@song1, @song2, @song3]
  end

  def test_song_has_name
    assert_equal("Teenage Wasteland", @song1.name)
end
end

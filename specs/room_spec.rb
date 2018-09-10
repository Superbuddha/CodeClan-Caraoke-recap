require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom <MiniTest::Test

  def setup
    @song1 =Song.new("Teenage Wasteland")
    @song2 = Song.new("Beastly")
    @song3 = Song.new("Time Bending")
    @guest = Guest.new("Henry")
    @room =Room.new("Indie Rock Room")
  end
  def test_room_has_name
    assert_equal("Indie Rock Room", @room.name)
end
end

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
    @songs = [@song1, @song2, @song3]
    @guest1 = Guest.new("Henry")
    @guest2 = Guest.new("Larry")
    @guests = [@guest1, @guest2]
    @room =Room.new("Indie Rock Room", @songs, @guests)
  end

  def test_room_has_name
    assert_equal("Indie Rock Room", @room.name())
end

def test_room_has_songs
  assert_equal(3, @room.number_of_songs())
end

def test_room_starts_empty
  assert_equal(0, @room.number_of_guests())
end

def test_room_can_add_guests
  @room.check_in_guest(@guest1)
  assert_equal(1, @room.number_of_guests())
end

def test_add_multiple_guests
  @room.check_in_guests(@guests)
  assert_equal(2, @room.number_of_guests())
end

def test_can_remove_guest
  @room.remove_guest(@guest1)
  assert_equal(1, @room.number_of_guests())
end
end

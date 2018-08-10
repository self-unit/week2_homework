require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class RoomTest < MiniTest::Test

  def setup
    @room_1 = Room.new("The Winchester", @songs_1, 3)
    @room_2 = Room.new("The Spandau", @songs_2, 5)
    @room_3 = Room.new("The Omega", @song_3, 2)

    @guest_1 = Guest.new("Dolph Lundgren", 50, 60)
    @guest_2 = Guest.new("Eric Cartmen", 12, 10)
    @guest_3 = Guest.new("Dolly Parton", 100, 72)
    @guest_4 = Guest.new("Jackie Chan", 1000, 65)
    @guest_5 = Guest.new("Shangela", 5, 32)
  end

  def test_till_is_paid
    assert_equal(300, @room_1.till)
  end


end

require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../drink')
require_relative('../food')
require_relative('../ccc')

class RoomTest < MiniTest::Test

  def setup
    @room_1 = Room.new("The Winchester", @songs_1, 3)
    @room_2 = Room.new("The Spandau", @songs_2, 5)
    @room_3 = Room.new("The Omega", @song_3, 2)

    @rooms = [@room_1, @room_2, @room_3]

    @guest_1 = Guest.new("Dolph Lundgren", 50, 60)
    @guest_2 = Guest.new("Eric Cartmen", 12, 10)
    @guest_3 = Guest.new("Dolly Parton", 100, 72)
    @guest_4 = Guest.new("Jackie Chan", 1000, 65)
    @guest_5 = Guest.new("Shangela", 5, 32)

    @red_drink = Drink.new("Sambuca", 5, 40)
    @orange_drink = Drink.new("Screwdriver", 4, 5)
    @yellow_drink = Drink.new("Advocaat", 2, 12)
    @green_drink = Drink.new("Midori", 3, 14)
    @blue_drink = Drink.new("Blue Bols", 1, 21)

    @food_1 = Food.new("Steak", 28, 10)
    @food_2 = Food.new("Burger", 8, 15)
    @food_3 = Food.new("Poutine", 6, 30)

    @club = Ccc.new("Triple C's", @rooms, 100)
  end

  def test_club_has_rooms
    assert_equal(3, @club.rooms.count)
  end

  def test_club_has_name
    assert_equal("Triple C's", @club.name)
  end

  def test_room_has_space_after_add
    @club.add_guest_to_room(@room_1, @guest_1)
    assert_equal(true, @club.add_guest_to_room(@room_1, @guest_2))
  end

  def test_room_is_full
    @club.add_guest_to_room(@room_1, @guest_1)
    @club.add_guest_to_room(@room_1, @guest_2)
    @club.add_guest_to_room(@room_1, @guest_3)
    assert_equal(false, @club.add_guest_to_room(@room_1, @guest_1))
  end

  def test_charge_entry_fee
    @club.add_guest_to_room(@room_1, @guest_1)
    assert_equal(110, @club.till)
  end

  def test_till_is_paid
    @room_1.add_to_tab(@red_drink)
    @room_1.add_to_tab(@food_2)
    assert_equal(113, @club.pay_tab(@guest_1, @room_1))
  end

end

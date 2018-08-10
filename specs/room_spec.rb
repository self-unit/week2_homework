require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')
require_relative('../room')
require_relative('../food')
require_relative('../song')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @red_drink = Drink.new("Sambuca", 5, 40)
    @orange_drink = Drink.new("Screwdriver", 4, 5)
    @yellow_drink = Drink.new("Advocaat", 2, 12)
    @green_drink = Drink.new("Midori", 3, 14)
    @blue_drink = Drink.new("Blue Bols", 1, 21)

    @food_1 = Food.new("Steak", 28, 10)
    @food_2 = Food.new("Burger", 8, 15)
    @food_3 = Food.new("Poutine", 6, 30)

    @song_1 = Song.new("Sweet Home Alabama")
    @song_2 = Song.new("Man in the Mirror")
    @song_3 = Song.new("Faith")
    @song_4 = Song.new("Bohemian Rhapsody")
    @song_5 = Song.new("Englishman in New York")

    @songs_1 = [@song_1, @song_2, @song_3, @song_4, @song_5]
    @songs_2 = [@song_2, @song_3, @song_4]

    @room_1 = Room.new("The Winchester", @songs_1, 3)
    @room_2 = Room.new("The Spandau", @songs_2, 5)
    @room_3 = Room.new("The Omega", @song_3, 2)

    @guest_1 = Guest.new("Dolph Lundgren", 50, 60)
    @guest_2 = Guest.new("Eric Cartmen", 12, 10)
    @guest_3 = Guest.new("Dolly Parton", 100, 72)
    @guest_4 = Guest.new("Jackie Chan", 1000, 65)
    @guest_5 = Guest.new("Shangela", 5, 32)
  end

  def test_room_has_name
    assert_equal("The Winchester", @room_1.name)
  end

  def test_room_has_space
    assert_equal(true, @room_1.add_guest_to_room(@guest_1))
  end

  def test_room_is_full
    @room_1.add_guest_to_room(@guest_1)
    @room_1.add_guest_to_room(@guest_2)
    @room_1.add_guest_to_room(@guest_3)
    assert_equal(false, @room_1.add_guest_to_room(@guest_1))
  end

  def test_room_has_songs
    assert_equal(@songs_1, @room_1.songs)
  end

  def test_room_adds_item_to_tab
    @room_1.add_to_tab(@food_1)
    @room_1.add_to_tab(@blue_drink)
    assert_equal(2, @room_1.tab.count)
  end

  # def test_room_adds_food_to_tab
  #   @room_1.add_to_tab(@guest_1.age, @food_1, @guest_1.drunkenness)
  #   assert_equal(1, @room_1.tab.count)
  #   # assert_equal(28, @room_1.tab[:price])
  # end
  #
  # def test_room_adds_drink_to_tab
  #   @room_1.add_to_tab(@guest_1.age, @red_drink, @guest_1.drunkenness)
  #   assert_equal(1, @room_1.tab.count)
  #   # assert_equal(5, @room_1.tab[:price])
  # end
  #
  # def test_guest_too_young
  #   assert_equal("You're only #{age}, get tae!", @add_to_tab(@guest_2.age, @red_drink, @guest_1.drunkenness))
  # end
  #
  # def test_guest_too_drunk
  # end

end

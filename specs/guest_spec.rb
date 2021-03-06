require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')
require_relative('../room')
require_relative('../guest')
require_relative('../food')
require_relative('../ccc')
require_relative('../song')

class GuestTest < MiniTest::Test

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
    @songs_2 = [@song_3, @song_5]

    @room_1 = Room.new("The Winchester", @songs_1, 3)
    @room_2 = Room.new("The Spandau", @songs_2, 5)
    @room_3 = Room.new("The Omega", @songs_3, 2)

    @guest_1 = Guest.new("Dolph Lundgren", 50, "Man in the Mirror")
    @guest_2 = Guest.new("Eric Cartmen", 12, "Aggressor")
    @guest_3 = Guest.new("Dolly Parton", 100, "9 to 5")
    @guest_4 = Guest.new("Jackie Chan", 1000, "ShiChaHai")
    @guest_5 = Guest.new("Shangela", 5, "Faith")
  end

  def test_guest_has_name
    assert_equal("Dolph Lundgren", @guest_1.name)
  end

  def test_guest_wallet_value
    assert_equal(50, @guest_1.wallet)
  end

  def test_room_has_fav_song
    assert_equal("Whoo!", @guest_5.room_has_fav_song(@room_1))
  end

  def test_room_doesnt_have_fav_song
    assert_nil(@guest_2.room_has_fav_song(@room_1))
  end

end

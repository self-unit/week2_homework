require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @red_drink = Drink.new("Sambuca", 5, 40)
    @orange_drink = Drink.new("Screwdriver", 4, 5)
    @yellow_drink = Drink.new("Advocaat", 2, 12)
    @green_drink = Drink.new("Midori", 3, 14)
    @blue_drink = Drink.new("Blue Bols", 1, 21)
  end

  def test_drink_has_name
    assert_equal("Advocaat", @yellow_drink.name)
  end

  def test_drink_has_price
    assert_equal(3, @green_drink.price)
  end

  def test_drink_has_alc_level
    assert_equal(21, @blue_drink.alc_level)
  end

end

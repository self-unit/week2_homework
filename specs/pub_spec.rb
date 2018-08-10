require('minitest/autorun')
require('minitest/rg')
require_relative('../drinks')
require_relative('../pub')
require_relative('../customer')
require_relative('../food')

class PubTest < MiniTest::Test

  def setup
    @red_drink = Drink.new("Sambuca", 5, 40)
    @orange_drink = Drink.new("Screwdriver", 4, 5)
    @yellow_drink = Drink.new("Advocaat", 2, 12)
    @green_drink = Drink.new("Midori", 3, 14)
    @blue_drink = Drink.new("Blue Bols", 1, 21)

    @customer1 = Customer.new("Dolph Lundgren", 50, 60)

    @bar_1 = Pub.new("The Winchester", 300, [@red_drink, @orange_drink, @yellow_drink, @green_drink, @blue_drink], 2)
  end

  def test_pub_has_name
    assert_equal("The Winchester", @bar_1.name)
  end

  def test_pub_has_money
    assert_equal(300, @bar_1.till)
  end

  def test_pub_has_drinks
    assert_equal(5, @bar_1.drinks.count)
    assert_equal([@red_drink, @orange_drink, @yellow_drink, @green_drink, @blue_drink], @bar_1.drinks)
  end

  # def test_pub_has_stock
  #   assert_equal(2, @bar_1.stock_value)
  # end

end

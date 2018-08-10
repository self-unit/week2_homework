require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../food')


class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new("Steak", 28, 10)
    @food2 = Food.new("Burger", 8, 15)
    @food3 = Food.new("Poutine", 6, 30)
  end

  def test_food_has_name
    assert_equal("Burger", @food2.name)
  end

  def test_food_has_price
    assert_equal(28, @food1.price)
  end

  def test_food_has_rejuv
    assert_equal(30, @food3.rejuvenation_level)
  end

end

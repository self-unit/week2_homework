class Pub

attr_reader :name
attr_accessor :till, :drinks, :stock

def initialize(name, till, drinks, stock)
  @name = name
  @till = till
  @drinks = drinks || []
  @stock = stock || {}
end

def drink_sale(age, drink, drunkenness)
  if age > 18 && drunkenness < 50
    @drinks.delete(drink)
    @till += drink.price
    return true
  else
    return false
    # return "You're only #{age}, get tae eff!"
  end
end

def food_sale(food)
  @till += food.price
end

# def stock_value
#   @stock
# end

end

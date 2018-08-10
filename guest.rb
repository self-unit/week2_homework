class Guest

  attr_reader :name #:drunkenness
  attr_accessor :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    # @drunkenness = 0
  end

  def pay_tab(room)
    if @wallet >= room.tab
      ccc.tab_to_till(tab)
      @wallet -= room.tab
    end
  end

  #
  # def buy_drink(room, drink)
  #   if room.drink_sale(@age, drink, @drunkenness) == true
  #   @wallet -= drink.price
  #   @drunkenness += drink.alc_level
  #   end
  # end

end

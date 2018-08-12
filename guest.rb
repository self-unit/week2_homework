class Guest

  attr_reader :name, :fav_song #:drunkenness
  attr_accessor :wallet

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
    # @drunkenness = 0
  end

  def pay_tab(room_tab)
    @wallet -= room_tab
  end

  def room_has_fav_song(room_songs)
    for song in room_songs
      if song == @fav_song
        return "Whoo!"
      end
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

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

  def room_has_fav_song(room)
    # if room.songs.any? {|song| song == @fav_song}
    #   return "Whoo!"
    # end

    return room.songs.find {|song| song == @fav_song}

    # for song in room_songs
    #   if song == @fav_song
    #     return "Whoo!"
    #   else
    #     nil
    #   end
    # end
  end

end

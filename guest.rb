class Guest

  attr_reader :name, :fav_song
  attr_accessor :wallet

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def pay_tab(room_tab)
    @wallet -= room_tab
  end

  def room_has_fav_song(room)
    if room.songs.any? {|song| song.name == @fav_song}
      return "Whoo!"
    end
  end

end

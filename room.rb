class Room

  attr_reader :name, :songs, :capacity, :occupants, :tab

  def initialize(name, songs, capacity)
    @name = name
    @tab = []
    @songs = songs
    @capacity = capacity
    @occupants = []
  end

  def add_guest_to_room(guest)
    if @occupants.length < @capacity
      @occupants.push(guest)
      return true
    else
      false
    end
  end

  def add_to_tab(item)
    @tab.push(item)
  end

  # def add_to_tab(age, item, drunkenness)
  #   if item.class.name == "Drink"
  #     if age > 18 && drunkenness < 50
  #       @tab.push(item)
  #     else
  #       return "You're only #{age}, get tae!"
  #     end
  #   else
  #     @tab.push(item)
  #   end
  #
  # end

end

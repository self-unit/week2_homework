class Room

  attr_reader :name, :songs, :capacity, :tab
  attr_accessor :occupants

  def initialize(name, songs, capacity)
    @name = name
    @tab = []
    @songs = songs
    @capacity = capacity
    @occupants = []
  end

  def add_to_tab(item)
    @tab.push(item)
  end

  def give_tab_total
    tab_total = @tab.sum {|item| item.price}
  end

end

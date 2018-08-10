class Ccc

attr_reader :name, :rooms
attr_accessor :till

def initialize(name, rooms, till)
  @name = name
  @till = till
  @drinks = drinks || []
end

def entry_fee(guest)
  @till += 10
end

def tab_to_till(guest, room)
  @till += room.tab
  guest
end

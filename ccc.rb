class Ccc

attr_reader :name
attr_accessor :till, :rooms

  def initialize(name, rooms, till)
    @name = name
    @till = till
    @rooms = rooms
  end

  def add_guest_to_room(room, guest)
    if room.occupants.length < room.capacity
      room.occupants.push(guest)
      @till += 10
      return true
    else
      false
    end
  end

  def remove_guest_from_room(room, guest)
    room.occupants.delete(guest)
  end

  def pay_tab(guest, room)
    guest.wallet -= room.give_tab_total
    @till += room.give_tab_total
  end

end

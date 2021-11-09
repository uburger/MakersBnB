class Room
  attr_reader :selected_rooms

  @selected_rooms = []

  def self.select(selected_room)
    @selected_rooms << selected_room  
  end

  def self.book
    @selected_rooms.map { |booked| booked }
  end
end

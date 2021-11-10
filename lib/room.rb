class Room
  attr_reader :selected_rooms, :available_rooms
  @selected_rooms = []
  @available_rooms = ['Haunted hill', 'Trump tower', 'TheCorleones','Bates Mansion']
   
  def self.all
    @available_rooms.map { |room| room }
  end

  def self.add(new_space)
    # @new_space
    @available_rooms << new_space
    # p available rooms
  end

  def self.select(selected_room)
    @selected_rooms << selected_room  
  end

  def self.book
    @selected_rooms.map { |booked| booked }
  end
end

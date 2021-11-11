require 'pg'

class Room
  attr_reader :selected_rooms, :available_rooms
  @selected_rooms = []
  @available_rooms = ['Haunted hill', 'Trump tower', 'TheCorleones','Bates Mansion']
  
  def initialize
    
  end

  def self.all
    @available_rooms.map { |room| room }
  end

  def self.add(new_space)
    result =
    DatabaseConnection.query('SELECT * FROM makersbnb ORDER BY id DESC;')
      # result.map do |room|
      #   Room.new
      # end
      p result
  end

  def self.select(selected_room)
    @selected_rooms << selected_room  
  end

  def self.book
    @selected_rooms.map { |booked| booked }
  end
end

require 'pg'
# require_relative '../database_connection_setup'

class Room
  attr_reader :selected_rooms, :available_rooms
  @selected_rooms = []
  @available_rooms = []
  
  def initialize
    
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test') 
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    
    p @available_rooms = connection.exec('SELECT spaces FROM rooms;')
    p @available_rooms.map { |room| room.values.first }
  end

  def self.add(new_space, email, descr, price, avail)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    
    connection.exec("INSERT INTO rooms (spaces, email, descr, price, avail) VALUES ('#{new_space}', '#{email}', '#{descr}', '#{price}', '#{avail}');")

  end

  def self.select(selected_room)
    @selected_rooms << selected_room  
  end

  def self.book
    @selected_rooms.map { |booked| booked }
  end
end

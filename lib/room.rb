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
    
    @available_rooms = connection.exec('SELECT * FROM rooms;')
    #@available_rooms.map { |room| room }
    @available_rooms.map{ |room| room}
  end

  def self.filter(date)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test') 
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    
    @available_rooms = connection.exec('SELECT * FROM rooms;')
    #@available_rooms.map { |room| room }
    @available_rooms.select{ |room| room[:dates_booked] != date}
  end

  def self.add(new_space, email, descr, price, dates_booked)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    
    connection.exec("INSERT INTO rooms (spaces, email, descr, price, dates_booked) VALUES ('#{new_space}', '#{email}', '#{descr}', '#{price}', '#{dates_booked}');")

  end

  def self.selected(selected_room)
    @selected_rooms << selected_room  
  end

  def self.book
    @selected_rooms.map { |booked| booked }
  end
end

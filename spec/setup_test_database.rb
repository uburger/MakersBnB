require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec('TRUNCATE rooms;')
end

def add_row_to_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec (
    "INSERT INTO rooms(spaces, email, descr, price, avail)
    VALUES ('Haunted hill', 'example1@example.com', 'A lovely place, bring a teddy bear', 9, TRUE);
    
    INSERT INTO rooms(spaces, email, descr, price, avail)
    VALUES ('Trump Tower', 'example2@example.com', 'Not a lovely place', 999, TRUE);
    
    INSERT INTO rooms(spaces, email, descr, price, avail)
    VALUES ('The Corleones', 'example3@example.com', 'Get your ransom money ready', 500, TRUE);
    
    INSERT INTO rooms(spaces, email, descr, price, avail)
    VALUES ('Bates Mansion', 'example4@example.com', 'Ready for a scare?', 400, TRUE);
    
    INSERT INTO rooms(spaces, email, descr, price, avail)
    VALUES ('Cosiest broom closet in London', 'example5@example.com', 'Rooms with brooms!', 200, TRUE);"
  )
end

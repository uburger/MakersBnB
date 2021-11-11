# CODE 'N' PEPPER is here!!!!!

## Good practice decisions when checking each others code:

- No brackets unless in an method argument 
- Single quotes unless needed for interpolation or for punctuation purposes
- Indentation 2 spaces
- Follow Rubocop ensure no offences before pushing
- Remember all feedback is good feedback (but be nice)
- Add user stories to README.md
- Clean up trello board at the end of day


## MVP User Stories:

Sign up:
```
As a user
So I can interact with the platform
I want to be able to sign up with a username.
```

Listing rooms: 
```
As a user
So I can find a room to rent out
I want a webpage to display a list of rooms.
```

Booking:
```
As a user
So I can be assured I have a room
I want to be able to book a room.
```

Add room:
```
As a user
So I can rent my room out
I want to be able to add a room to the website.
```

DB instructions:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE makersbnb;
3. Connect to the database using the pqsl command \c makersbnb;
4. Run the query we have saved in the file 01_create_spaces_table.sql
5. Create test database using the psql command CREATE DATABASE makersbnb_test;
6. Create table by connecting to the makersbnb_test database
7. Connect to the database using the pqsl command \c makersbnb_test
8. Create a makersbnb table using the psql command CREATE TABLE makersbnb(id SERIAL PRIMARY KEY, spaces VARCHAR(60), email  VARCHAR(60), descr VARCHAR(60), price NUMERIC(3), avail BOOLEAN NOT NULL);

9. Insert rows using the psql command 

INSERT INTO makersbnb(spaces, email, descr, price, avail)
VALUES ('Haunted hill', 'example1@example.com', 'A lovely place, bring a teddy bear', 9, TRUE);

INSERT INTO makersbnb(spaces, email, descr, price, avail)
VALUES ('Trump Tower', 'example2@example.com', 'Not a lovely place', 999, TRUE);

INSERT INTO makersbnb(spaces, email, descr, price, avail)
VALUES ('The Corleones', 'example3@example.com', 'Get your ransom money ready', 500, TRUE);

INSERT INTO makersbnb(spaces, email, descr, price, avail)
VALUES ('Bates Mansion', 'example4@example.com', 'Ready for a scare?', 400, TRUE);
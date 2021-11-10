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
8. Create a table using the psql command CREATE TABLE spaces(id SERIAL PRIMARY KEY, url VARCHAR(60));
9. Insert value using the psql command 

INSERT INTO spaces (message) values ('Haunted hill');

INSERT INTO spaces (message) values ('Trump Tower');

INSERT INTO spaces (message) values ('The Corleones');

INSERT INTO spaces (message) values ('Bates Mansion');
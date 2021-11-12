CREATE TABLE rooms(id SERIAL PRIMARY KEY, spaces VARCHAR(60), email  VARCHAR(60), descr VARCHAR(60), price NUMERIC(3), avail BOOLEAN NOT NULL);

INSERT INTO rooms(spaces, email, descr, price, avail)
VALUES ('Haunted hill', 'example1@example.com', 'A lovely place, bring a teddy bear', 9, TRUE);

INSERT INTO rooms(spaces, email, descr, price, avail)
VALUES ('Trump Tower', 'example2@example.com', 'Not a lovely place', 999, TRUE);

INSERT INTO rooms(spaces, email, descr, price, avail)
VALUES ('The Corleones', 'example3@example.com', 'Get your ransom money ready', 500, TRUE);

INSERT INTO rooms(spaces, email, descr, price, avail)
VALUES ('Bates Mansion', 'example4@example.com', 'Ready for a scare?', 400, TRUE);

CREATE TABLE makersbnb_test(id SERIAL PRIMARY KEY, spaces VARCHAR(60), email  VARCHAR(60), descr VARCHAR(60), price NUMERIC(3), avail BOOLEAN NOT NULL);

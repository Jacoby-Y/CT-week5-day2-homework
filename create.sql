DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
  customer_id SERIAL PRIMARY KEY
);


DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
  movie_id SERIAL PRIMARY KEY,
	title VARCHAR(50),
	"desc" TEXT,
	rating VARCHAR(5)
);


DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
  ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);


DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
  concession_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);
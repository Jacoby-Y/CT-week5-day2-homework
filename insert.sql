INSERT INTO customer(customer_id)
VALUES
	(1),
	(2),
	(3);


INSERT INTO movie(title, "desc", rating)
VALUES
	('Those in The Snow', 'A documentary about the indigenous Sami people of Scandinavia.', 'PG13'),
	('Not Big Enough For The Both Of Us', 'A romantic comedy about a cowboy falling inlove with his rival.', 'R'),
	('What Comes Around Mostly Goes Around', 'A comedy about a young science prodigy making his way through college.', 'PG13');


INSERT INTO ticket(customer_id, movie_id)
VALUES
	(1, 2),
	(2, 3),
	(3, 1);


INSERT INTO concession(customer_id, concession_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 2),
	(2, 3),
	(3, 1);
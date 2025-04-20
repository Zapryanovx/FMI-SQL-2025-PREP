CREATE TABLE Users
(
	id int IDENTITY(1, 1) PRIMARY KEY,
	email varchar(32),
	password varchar(32),
	created DATETIME DEFAULT GETDATE()
);

CREATE TABLE Friends
(
	friend1 int,
	friend2 int
);

CREATE TABLE Walls
(
	receiver int,
	sender int,
	message varchar(128),
	sent DATETIME DEFAULT GETDATE()
);

CREATE TABLE Groups
(
	id int IDENTITY(1, 1) PRIMARY KEY,
	name varchar(16),
	description varchar(128) DEFAULT ''
);

CREATE TABLE GroupMembers
(
	group_id int,
	user_id int
);

DROP TABLE Users;
DROP TABLE Friends;
DROP TABLE Walls;
DROP TABLE Groups;
DROP TABLE GroupMembers;
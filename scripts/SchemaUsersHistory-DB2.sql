
CREATE TABLE Users.Users(
	username varchar(32) not null primary key,
	fullname varchar(256), 
	role varchar(32)
);

CREATE TABLE Users.History(
	username varchar(32) not null references Users(username),
	ts timestamp not null default (current timestamp),
	operation varchar(64),
	is_success char(1) check (is_success in ('Y', 'N')),
	unique(ts, username)
);

CREATE INDEX H_USERNAME on Users.History(username);
CREATE INDEX H_TS on Users.History(ts);

INSERT INTO Users.Users VALUES
('gpenkov', 'gheorghi penkov', 'administrator'),
('avelin', 'alexander velin', 'administrator'),
('mmarinov', 'marin marinov', 'users' ),
('ppentchev', 'petko pentchev', 'users'),
('bombe', 'vesselin kotarov', 'users'),
('maav', 'boris gueorguiev', 'bofh'),
('bofh', 'petar marinov', 'bofh');

INSERT INTO Users.History VALUES

('mmarinov', (current timestamp) - 1 day, 'logout', 'Y'),
('gpenkov', (current timestamp) - 2 day, 'logout', 'N')	,
('maav', (current timestamp) - 3 days, 'logout', 'N')	,
('avelin', (current timestamp) - 4 minutes , 'login', 'Y'),
('gpenkov', (current timestamp) - 5 minutes, 'logout', 'Y'),
('mmarinov', (current timestamp) , 'operation', 'Y'),
('gpenkov', (current timestamp) + 1 day, 'operation', 'N'),
('maav', (current timestamp) + 20 days, 'operation', 'N'),
('avelin', (current timestamp) + 10 minutes , 'login', 'Y'),
('gpenkov', (current timestamp) + 15 minutes, 'operation', 'Y'),
('mmarinov', (current timestamp) , 'logout', 'Y'),
('gpenkov', (current timestamp) + 2 day, 'logout', 'N')	,
('maav', (current timestamp) + 3 days, 'logout', 'N'),
('avelin', (current timestamp) + 4 minutes , 'login', 'Y'),
('gpenkov', (current timestamp) + 5 minutes, 'logout', 'Y');


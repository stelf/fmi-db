CREATE TABLE Students 
	( 
		fn varchar(16) not null primary key,
		family varchar(32) not null
 	)
	
CREATE TABLE Marks (
	fn varchar(16) not null,
	mark real not null check(mark >= 2 and mark <=6),
	course varchar(16) not null,
	constraint fk_test foreign key (fn) references Students(fn)
)

INSERT INTO Students 
	(fn, family) 
VALUES 
	('12832', 'Velin'),
	('71512', 'Velin'),
	('71508', 'Trenchev'),
	('42686', 'Penkov'),
	('71473', 'Tsvetanov')


INSERT INTO Marks 
	(fn, mark, course) 
VALUES 
	('71512', 6, 'I2P'), 
	('71508', 3, 'I2P'), 
	('42686', 5, 'I2P'), 
	('71473', 6, 'I2P')
	('12832', 2, 'DB2'), 
	('71508', 3, 'DB2'), 
	('71473', 4, 'DB2')
	
	
ALTER TABLE MARKS ADD CHECK (MARK >= 2 AND MARK <=6 ) 


create table superhero (
id SERIAL PRIMARY KEY,
question TEXT,	
option1 TEXT,
option2 TEXT,
option3 TEXT,
option4 TEXT,
answer	TEXT
);

insert into superhero (question, option1, option2, option3, option4, answer) VALUES 
	('Who lives in Gotham City', 'batman', 'superman', 'wonderwoman', 'aliens');



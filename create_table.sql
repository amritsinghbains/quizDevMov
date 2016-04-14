create table superhero (
id SERIAL PRIMARY KEY,
question TEXT,	
option1 TEXT,
option2 TEXT,
option3 TEXT,
option4 TEXT,
answer	TEXT
);

create table report (
tablename TEXT,	
questionid TEXT
);

insert into superhero (question, option1, option2, option3, option4, answer) 
	VALUES 
(
'Who lives in Gotham City?', 
'Batman', 
'Superman', 
'Wonderwoman', 
'Aliens', 
'A'
),
(
'What is Supermans love interest called?',
'Patience Phillips',
'Lois Lane',
'Samantha Sampson',
'Lucy Longstocking',
'B'
),
(
'Peyton Westlake is also known as what?',
'Dark Knight',
'Dancer In The Dark',
'Darkboy',
'Darkman',
'D'
),
(
'What is Spider-Mans real name?',
'Peter Parker',
'Peter Picker',
'Peter Parkinson',
'Peter Pepper',
'A'
),
(
'What is Catwomans real name?',
'Patience Phillips',
'Patsy Palm',
'Portia Pearson',
'Penelope Parkinson',
'A'
),
(
'What planet is Superman from?',
'Omega 5',
'Alpha Centauri',
'Krypton',
'Zyzzyx ',
'C'
),
(
'The Batman movies take place in which of the following?',
'Gotham City',
'Gothic City',
'Goth City',
'Glasgow',
'A'
),
(
'What is the name of Batmans sidekick?',
'Richard',
'Ramon',
'Robin',
'Roy ',
'C'
),
(
'Which newspaper does Clark Kent work for in Superman?',
'The Daily Moon',
'The Daily Comet',
'The Daily Satellite',
'The Daily Planet',
'D'
),
(
'Which of the following is not one of the Watchmen?',
'Wolverine',
'Night Owl II',
'Ozymandias',
'Silk Spectre II',
'A'
),
(
'What is the name of Spider-Mans love interest?',
'Emma Peel',
'Mary-Jane Watson',
'Lady Deathstrike',
'Elektra',
'B'
),
(
'Wolverine is also known as what?',
'Hogan',
'Logan',
'Wogan',
'Shogun ',
'B'
),
(
'Lamont Cranston is also known as what?',
'The Shadow',
'The Phantom',
'The Lizard',
' The Hulk',
'A'
),
(
'Who is Supermans arch enemy?',
'Silver Surfer',
'The Green Goblin',
'Lex Luthor',
'The Joker',
'C'
),
(
'Who played Supergirl in Supergirl: The Movie?',
'Helen Hunt',
'Helen Slater',
'Helen Mirren',
'Helena Bonham Carter',
'B'
),
(
'What is The Phantoms real name?',
'Kat Wilson',
'Kris Walton',
'Kit Walker',
'Konrad Walmington ',
'C'
),
(
'Norman Osborn is also known as who?',
'Lex Luther',
'The Green Goblin',
'The Penguin',
'Doctor Octopus',
'B'
),
(
'Who played Batman in Batman Forever?',
'Michael Keaton',
'Christian Bale',
'George Clooney',
'Val Kilmer',
'D'
),
(
'Which of the following powers does X-Men Colossus have?',
'Turn into steel',
'Change the weather',
'Read minds',
'Become invisible',
'A'
),
(
'Which of the following is not one of the League Of Extraordinary Gentlemen?',
'Dorian Gray',
'Huckleberry Finn',
'Tom Sawyer',
'Captain Nemo',
'B'
),
(
'Steve Rogers is also known as who?',
'Captain Austria',
'Captain Australia',
'Captain Antigua',
'Captain America',
'D'
),
(
'What is Daredevils real name?',
'Mick Monroe',
'Michael Madsen',
'Matt Murdock',
'Maurice Micklethwaite',
'C'
),
(
'Blade is a superhero but he iss also a what?',
'Werewolf',
'Vampire',
'Alcoholic',
'Primary school teacher',
'B'
),
(
'Which character did Heath Ledger play in The Dark Knight?',
'The Penguin',
'Batman',
'Robin',
'The Joker ',
'D'
),
(
'Who directed Hellboy in 2004?',
'Sam Raimi',
'Steven Spielberg',
'Guillermo del Toro',
'Martin Scorsese',
'C'
),
(
'Which of the X-Men is also known as Bobby Drake?',
'Cyclops',
'Rogue',
'Storm',
'Iceman',
'D'
),
(
'Name the family in The Incredibles.',
'The Barrs',
'The Carrs',
'The Parrs',
'The Starrs',
'C'
),
(
'Daredevil is also known as what?',
'The Man In Red',
'The Man Without Brains',
'The Man Without Hair',
'The Man Without Fear',
'D'
),
(
'What is the Incredible Hulks real name?',
'Dr Bruce Banner',
'Dr Bruce Wayne',
'Dr Bruce Forsyth',
'Dr Bruce Springsteen',
'A'
),
(
'Who starred as The Shadow in the 1994 movie?',
'Billy Zane',
'Alec Baldwin',
'George Clooney',
'Michael Keaton',
'B'
),
(
'Name the vigilante superhero played by Will Smith.',
'Hancock',
'Jones',
'Burnley',
'Sampson ',
'A'
);


USE ComicBookCatalog
GO

INSERT INTO dbo.ComicBooks(
	[Title], [Volume], [Issue], [Year], [Month], [Publisher], [Writer], [Pencils],
	[Inks], [Letterer], [Colorist], [Editor], [EditorInChief], [Story], [Part])
VALUES
('Web of Spider-Man', 1, 13, 1986, 4, 'Marvel Comics Group', 'Peter David', 'Mike Harris',
'Kyle Baker', 'Phil Felix', 'Bob Sharen', 'Jim Owsley', 'Jim Shooter', 'Point of View', 1),

('Web of Spider-Man', 1, 90, 1992, 7, 'Marvel Comics', 'Howard Mackie', 'Alex Saviuk', 
'Sam DeLarosa', 'Rick Parker', 'Bob Sharen', 'Danny Fingeroth', 'Tom DeFalco',
'The Spider''s Thread', 1),

('Web of Spider-Man', 1, 91, 1992, 8, 'Marvel Comics', 'Howard Mackie', 'Alex Saviuk', 
'Williamson, Stegbauer & Milgrom', 'Rick Parker', 'Bob Sharen', 'Danny Fingeroth', 'Tom DeFalco',
'Making Amends Meet', 1),

('Web of Spider-Man', 1, 92, 1992, 9, 'Marvel Comics', 'Howard Mackie', 'Alex Saviuk', 
'Jim Palmiotti', 'Rick Parker', 'Bob Sharen', 'Danny Fingeroth', 'Tom DeFalco',
'Foreign Affairs', 1),

('Web of Spider-Man', 1, 93, 1992, 10, 'Marvel Comics', 'Howard Mackie', 'Alex Saviuk', 
'Bob McLeod', 'Steve Dutro', 'Bob Sharen', 'Danny Fingeroth', 'Tom DeFalco',
'The Test', 1),

('Web of Spider-Man', 1, 93, 1992, 10, 'Marvel Comics', 'Howard Mackie', 'Alex Saviuk', 
'Bob McLeod', 'Steve Dutro', 'Bob Sharen', 'Danny Fingeroth', 'Tom DeFalco',
'Hobgoblin Reborn: The Test', 1),

('Web of Spider-Man', 1, 94, 1992, 11, 'Marvel Comics', 'Howard Mackie', 'Alex Saviuk', 
'Don Hudson', 'Dave Sharpe', 'Sharen & Witterstaetter', 'Danny Fingeroth', 'Tom DeFalco',
'Hobgoblin Reborn: Target Two', 2),

('Superior Spider-Man', 1, 28, 2014, 4, 'Marvel Worldwide, Inc.', 'Dan Slott', 'Giuseppe Camuncoli', 
'John Dell', 'Chris Eliopoulos', 'Antonio Fabela', 'Ellie Pyle', 'Axel Alonso',
'Goblin Nation', 2)

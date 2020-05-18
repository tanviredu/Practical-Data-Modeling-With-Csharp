USE ComicBookCatalog
GO

INSERT INTO dbo.Companies([Name])
VALUES ('Marvel Comics'), ('DC Comics'), ('Dark Horse Comics'), ('Image Comics')
GO

DECLARE @marvelId int

SELECT
	@marvelId = [Id]
FROM dbo.Companies 
WHERE [Name] = 'Marvel Comics'

INSERT INTO dbo.Titles([Name], [CompanyId])
SELECT DISTINCT
	[Title],
	@marvelId
FROM dbo.ComicBooks_v1
GO

INSERT INTO dbo.People([FirstName], [LastName], [Fictional])
VALUES
('Steve', 'Wacker', 0),
('Nick', 'Lowe', 0),
('Christos', 'Gage', 0),
('Jorge', 'Molina', 0),
('Devin', 'Lewis', 0),
('Axel', 'Alonso', 0),
('Joe', 'Queseda', 0),
('Dan', 'Buckley', 0),
('Alan', 'Fine', 0),
('Alex', 'Saviuk', 0),
('Antonio', 'Fabela', 0),
('Axel', 'Alonso', 0),
('Bob', 'McLeod', 0),
('Bob', 'Sharen', 0),
('Dan', 'Slott', 0),
('Danny', 'Fingeroth', 0),
('Don', 'Hudson', 0),
('Ellie', 'Pyle', 0),
('Giuseppe', 'Camuncoli', 0),
('Howard', 'Mackie', 0),
('Jim', 'Owsley', 0),
('Jim', 'Palmiotti', 0),
('Jim', 'Shooter', 0),
('John', 'Dell', 0),
('Kyle', 'Baker', 0),
('Mike', 'Harris', 0),
('Peter', 'David', 0),
('Sam', 'DeLarosa', 0),
('Renee', 'Witterstaetter', 0),
('Tom', 'DeFalco', 0),
('Al', 'Williamson', 0),
('Mark', 'Stegbauer', 0),
('Al', 'Milgrom', 0),
('Chris', 'Eliopoulos', 0),
('Dave', 'Sharpe', 0),
('Phil', 'Felix', 0),
('Rick', 'Parker', 0),
('Steve', 'Dutro', 0)
GO

INSERT INTO dbo.Roles([Name])
VALUES
('Variant Cover'),
('Senior Editor'),
('Writer'),
('Penciler'),
('Inker'),
('Colorist'),
('Letterer'),
('Editor'),
('Editor-in-Chief'),
('Assistant Editor'),
('Chief Creative Officer'),
('Publisher'),
('Executive Producer')
GO

INSERT INTO dbo.Stories ([Name], [TitleId])
VALUES
('Point of View', 2),
('The Spider''s Thread', 2),
('Making Amends Meet', 2),
('Foreign Affairs', 2),
('Hobgoblin Reborn', 2),
('Goblin Nation', 1)
GO

INSERT INTO StoryParts([StoryId], [Subtitle], [Part])
VALUES
(1, NULL, 1),
(2, NULL, 1),
(3, NULL, 1),
(4, NULL, 1),
(5, 'The Test', 1),
(5, 'Target Two', 2),
(6, NULL, 1),
(6, NULL, 2),
(6, NULL, 3)
GO


INSERT INTO ComicBooks([StoryPartId], [Volume], [Issue], [Year], [Month])
SELECT 1, 1, 13, 1986, 4
UNION 
SELECT 2, 1, 90, 1992, 7
UNION 
SELECT 3, 1, 91, 1992, 8
UNION 
SELECT 4, 1, 92, 1992, 9
UNION 
SELECT 5, 1, 93, 1992, 10
UNION 
SELECT 6, 1, 94, 1992, 11
UNION 
SELECT 11, 1, 27, 2014, 4
UNION 
SELECT 12, 1, 28, 2014, 4
UNION 
SELECT 13, 1, 29, 2014, 5
GO

INSERT INTO StaffMembers([PersonId], [RoleId])
VALUES
-- Writers
(18, 1), (11, 1), (6, 1), (36, 1), 
-- Pencilers
(17, 2), (1, 2), (10, 2),
-- Inkers
(16, 3), (19, 3), (22, 3), (23, 3), (24, 3), (13, 3), (4, 3), (15, 3),
-- Colorists
(5, 4), (20, 4), (2, 4), 
-- Letterers
(27, 5), (28, 5), (29, 5), (26, 5), (25, 5), 
-- Editors
(12, 6), (7, 6), (9, 6), 
-- Editors-in-Chief
(14, 7), (21, 7), (3, 7), 
-- Assistant Editors
(30, 8), 
-- Chief Creative Officers
(32, 9), 
-- Publishers
(33, 10), 
--Executive Producers
(34, 11),
-- Senior Editors
(38, 12), (35, 12),
-- Variant Covers
(37, 13)
GO

INSERT INTO ComicBookStaffMembers([ComicBookId], [StaffMemberId])
SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.Writer = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL

SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.Pencils = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL

SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.Inks = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL

SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.Letterer = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL

SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.Colorist = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL 

SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.Editor = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL

SELECT 
	CB2.Id,
	Sm.[Id]
FROM StaffMembers AS SM
INNER JOIN People AS P 
	ON SM.PersonId = P.Id
INNER JOIN ComicBooks_v1 AS CB1
	ON CB1.EditorInChief = P.[FirstName] + ' ' + P.[LastName]
INNER JOIN ComicBooks AS CB2 
	ON CB1.Issue = CB2.Issue 
	AND CB1.[Year] = CB2.[Year]
	AND CB1.[Month] = CB2.[Month] 

UNION ALL

SELECT 3, 10
UNION ALL
SELECT 3, 11
UNION ALL 
SELECT 3, 12
UNION ALL
SELECT 6, 21
UNION ALL
SELECT 6, 22
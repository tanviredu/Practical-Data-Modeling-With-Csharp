USE ComicBookCatalog
GO

CREATE TABLE dbo.Companies(
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[Name]			varchar(125) NOT NULL
)
GO

CREATE TABLE dbo.Titles (
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[Name]			varchar(125) NOT NULL,
	[CompanyId]		int	FOREIGN KEY REFERENCES Companies([Id])
)
GO

CREATE TABLE dbo.People (
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[FirstName]		varchar(75) NOT NULL,
	[LastName]		varchar(75) NOT NULL,
	[Fictional]		bit
)
GO

CREATE TABLE dbo.Roles (
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[Name]			varchar(125) NOT NULL
)
GO

CREATE TABLE dbo.StaffMembers (
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[PersonId]		int FOREIGN KEY REFERENCES People([Id]),
	[RoleId]		int FOREIGN KEY REFERENCES Roles([Id])
)
GO

CREATE TABLE dbo.Stories (
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[Name]			varchar(125) NOT NULL,
	[TitleId]		int FOREIGN KEY REFERENCES Titles([Id])
)
GO

CREATE TABLE dbo.StoryParts(
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[StoryId]		int FOREIGN KEY REFERENCES Stories([Id]),
	[Part]			int NOT NULL DEFAULT(1),
	[Subtitle]		varchar(125)
)
GO

CREATE TABLE dbo.ComicBooks(
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[StoryPartId]	int	FOREIGN KEY REFERENCES StoryParts([Id]),
	[Volume]		int NOT NULL DEFAULT(1),
	[Issue]			int NOT NULL,
	[Year]			int NOT NULL,
	[Month]			int NOT NULL,
	[Synopsis]		varchar(MAX)
)
GO

CREATE TABLE dbo.Characters (
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[Name]			varchar(125) NOT NULL,
	[AlterEgoId]	int FOREIGN KEY REFERENCES People([Id])
)
GO

CREATE TABLE dbo.ComicBookStaffMembers(
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[StaffMemberId]	int FOREIGN KEY REFERENCES StaffMembers([Id]),
	[ComicBookId]	int	FOREIGN KEY REFERENCES ComicBooks([Id]),
)
GO

CREATE TABLE dbo.ComicBookCharacters(
	[Id]			int IDENTITY(1,1) PRIMARY KEY,
	[CharacterId]	int FOREIGN KEY REFERENCES Characters([Id]),
	[ComicBookId]	int	FOREIGN KEY REFERENCES ComicBooks([Id]),
)
GO
USE ComicBookCatalog
GO

CREATE TABLE dbo.[ComicBooks] (
	[Id] int IDENTITY(1, 1) PRIMARY KEY,
	[Title] varchar(125),
	[Volume] int,
	[Issue] int,
	[Year] int,
	[Month] int,
	[Publisher] varchar(125),
	[Writer] varchar(125),
	[Pencils] varchar(125),
	[Inks] varchar(125),
	[Letterer] varchar(125),
	[Colorist] varchar(125),
	[Editor] varchar(125),
	[EditorInChief] varchar(125),
	[Synopsis] varchar(MAX),
	[Story] varchar(125),
	[Part] int
)
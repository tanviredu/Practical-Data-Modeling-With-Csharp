USE ComicBookCatalog
GO

ALTER TABLE dbo.ComicBookCharacters
	DROP CONSTRAINT FK__ComicBook__Chara__60A75C0F

ALTER TABLE dbo.ComicBookCharacters
	DROP COLUMN CharacterId

ALTER TABLE dbo.ComicBookCharacters
	ADD CharacterVersionId	int	
	FOREIGN KEY REFERENCES CharacterVersions(Id)

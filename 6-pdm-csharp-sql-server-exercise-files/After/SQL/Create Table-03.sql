USE ComicBookCatalog
GO

CREATE TABLE dbo.CharacterVersions (
	[Id]		int	IDENTITY(1,1) 
		CONSTRAINT PK_CharacterVersions_Id
		PRIMARY KEY,

	[CharacterId]	int	
		CONSTRAINT FK_CharacterVersions_Characters_Id
		FOREIGN KEY REFERENCES Characters(Id),

	[AlterEgoId]	int	
		CONSTRAINT FK_CharacterVersions_People_Id 
		FOREIGN KEY REFERENCES People(Id),

	[Version]	int NOT NULL 
		CONSTRAINT DFLT_CharacterVersions_Version
		DEFAULT(1)
)
GO


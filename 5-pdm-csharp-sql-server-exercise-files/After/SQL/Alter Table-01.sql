USE ComicBookCatalog
GO

ALTER TABLE dbo.Characters
	DROP CONSTRAINT FK__Character__Alter__619B8048

AlTER TABLE dbo.Characters
	DROP COLUMN AlterEgoId
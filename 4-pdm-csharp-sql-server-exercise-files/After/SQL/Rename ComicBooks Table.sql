USE ComicBookCatalog
GO

IF EXISTS(SELECT * FROM sysobjects WHERE Name = 'ComicBooks')
	EXEC sp_rename 'ComicBooks', 'ComicBooks_v1'
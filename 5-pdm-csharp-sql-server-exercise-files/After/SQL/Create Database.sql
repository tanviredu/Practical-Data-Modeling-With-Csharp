
CREATE DATABASE [ComicBookCatalog]
 CONTAINMENT = NONE
 ON  PRIMARY 
(	NAME = N'ComicBookCatalog', 
	FILENAME = N'<<your data path>>\MSSQL\DATA\ComicBookCatalog.mdf' , 
	SIZE = 4096KB , 
	MAXSIZE = UNLIMITED, 
	FILEGROWTH = 1024KB )
 LOG ON 
(	NAME = N'ComicBookCatalog_log', 
	FILENAME = N'<<your data path>>\MSSQL\DATA\ComicBookCatalog_log.ldf' , 
	SIZE = 1024KB , 
	MAXSIZE = 2048GB , 
	FILEGROWTH = 10%)
GO




USE ComicBookCatalog
GO

SELECT 
	[Character] = C.Name,
	[Alter Ego] = P.FirstName + ' ' + P.LastName,
	CV.[Version]
FROM dbo.CharacterVersions AS CV 
INNER JOIN dbo.Characters AS C 
	ON CV.CharacterID = C.Id
INNER JOIN dbo.People AS P
	ON CV.AlterEgoId = P.Id 
ORDER BY 
	[Character],[Version] 

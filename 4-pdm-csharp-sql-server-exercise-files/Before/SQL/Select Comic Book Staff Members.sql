SELECT 
	T.[Name],
	C.[Issue],
	[Role] = R.[Name],
	[Person] = P.[FirstName] + ' ' + P.[LastName]
FROM ComicBooks AS C 
INNER JOIN StoryParts AS SP 
	ON C.StoryPartId = SP.Id 
INNER JOIN Stories AS S
	ON SP.StoryId = S.Id 
INNER JOIN Titles AS T
	ON S.TitleId = T.Id 
INNER JOIN ComicBookStaffMembers AS CBSM
	ON C.Id = CBSM.ComicBookId
INNER JOIN StaffMembers AS SM 
	ON CBSM.StaffMemberId = SM.Id 
INNER JOIN People AS P
	ON SM.PersonId = P.Id
INNER JOIN Roles AS R
	ON SM.RoleId = R.Id 
WHERE TitleId = 1
AND Issue = 28
ORDER BY 
	R.Id,
	P.LastName 
INSERT INTO CharacterVersions_Temp (Id, CharacterId, AlterEgoId, [Version])
SELECT 
	Id, AlterEgoId, CharacterId, [Version]
FROM CharacterVersions 

DELETE FROM CharacterVersions

SET IDENTITY_INSERT CharacterVersions ON

INSERT INTO CharacterVersions (Id, CharacterId, AlterEgoId, [Version]) 
SELECT 
	Id,
	CharacterId, 
	AlterEgoId, 
	[Version]
FROM CharacterVersions_Temp

SET IDENTITY_INSERT CharacterVersions OFF
ALTER TABLE CharacterVersions
	DROP CONSTRAINT
		FK_CharacterVersions_Characters_Id,
		FK_CharacterVersions_People_Id
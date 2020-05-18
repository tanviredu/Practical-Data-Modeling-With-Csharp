
ALTER TABLE dbo.[CharacterVersions]
	ADD 
	CONSTRAINT 
		FK_CharacterVersions_People_Id
		FOREIGN KEY (CharacterId)
		REFERENCES People(Id),

	CONSTRAINT
		FK_CharacterVersions_AlterEgos_Id
		FOREIGN KEY (AlterEgoId)
		REFERENCES AlterEgos(Id)



-- Angra_Mainyu_Traits
-- Author: HaoJun0823
-- DateCreated: 6/6/2020 9:14:45 AM
--------------------------------------------------------------

-- Single Conditions

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
("ANGRA_MAINYU_WAR", "REQUIREMENT_PLAYER_IS_AT_WAR");

-- Conditions Group

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
("REQUIREMENT_SET_ANGRA_MAINYU_WAR", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
("REQUIREMENT_SET_ANGRA_MAINYU_WAR", "ANGRA_MAINYU_WAR");

-- Single Conditions

INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES 
("ANGRA_MAINYU_NOT_WAR", "REQUIREMENT_PLAYER_IS_AT_WAR", 1);

-- Conditions Group

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
("REQUIREMENT_SET_ANGRA_MAINYU_NOT_WAR", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
("REQUIREMENT_SET_ANGRA_MAINYU_NOT_WAR", "ANGRA_MAINYU_NOT_WAR");
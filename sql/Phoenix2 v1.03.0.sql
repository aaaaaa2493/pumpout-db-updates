
-- Add Phoenix 2 v1.03.0 version

INSERT INTO version (versionId, mixId, internalTitle, parentVersionId, sortOrder)
SELECT
    (SELECT MAX(versionId) + 1 FROM version),
    (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2'),
    'v1.03.0',
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT MAX(sortOrder) + 10 FROM version);



-- Add ancestors for Phoenix 2 v1.03.0

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    d.ancestorId,
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    d.ancestorSortOrder
FROM _derived_versionAncestor d
    JOIN version v on d.versionId = v.versionId
    JOIN mix m on v.mixId = m.mixId
    WHERE m.internalTitle = 'Phoenix 2' AND v.internalTitle = 'v1.02.0';

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');



-- Add new artists if they don't exist



-- Add Apo11o program
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Apo11o program'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Apo11o program'));

-- Add Baby DONT Cry
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Baby DONT Cry'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Baby DONT Cry'));

-- Add Choko
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Choko'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Choko'));

-- Add ChumuNote
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'ChumuNote'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('ChumuNote'));

-- Add Hana Kagenui
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Hana Kagenui'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Hana Kagenui'));

-- Add Jorts
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Jorts'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Jorts'));

-- Add K
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'K'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('K'));

-- Add kanone
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'kanone'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('kanone'));

-- Add NOMA
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'NOMA'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('NOMA'));

-- Add r300k
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'r300k'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('r300k'));

-- Add RISH
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'RISH'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('RISH'));

-- Add SYNTHWULF
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'SYNTHWULF'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('SYNTHWULF'));

-- Add Tanchiky
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Tanchiky'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Tanchiky'));

-- Add uma
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'uma'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('uma'));

-- Add xi
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'xi'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('xi'));



-- Add new stepmakers if they don't exist



-- CONRAD
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'CONRAD'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD'));

-- DulKi
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'DulKi'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi'));

-- EXC
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'EXC'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('EXC'));

-- FEFEMZ
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'FEFEMZ'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ'));

-- GGWANG
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'GGWANG'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG'));

-- JUNARE
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'JUNARE'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE'));

-- refos
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'refos'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos'));

-- SUNNY
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'SUNNY'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY'));



-- Add new songs



-- Add I DONT CARE

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'I DONT CARE';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Baby DONT Cry')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'K-POP');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    165,
    165;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0301';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0301'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'I DONT CARE';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '아이 돈 케어';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_I_DONT_CARE.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add I DONT CARE S2

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 2);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE S4

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 4);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE S7

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE S10

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 10);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE S18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE D6

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 6);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE D14

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE D19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add I DONT CARE CoOp(x2)

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'C'),
    (SELECT difficultyId FROM difficulty WHERE value = 2);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Storm Chaser

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Storm Chaser';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('r300k')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'ORIGINAL');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    123.45,
    123.45;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0302';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0302'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Storm Chaser';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '스톰 체이서';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Storm_Chaser.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Storm Chaser S7

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser S10

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 10);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser S15

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser S18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser S22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser D11

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser D16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser D20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Storm Chaser D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add ::POINT_NEMO::

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    '::POINT_NEMO::';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('xi')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'ORIGINAL');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    100,
    440;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0303';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0303'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    '::POINT_NEMO::';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '::포인트_니모::';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songLabel (songLabelId, songId, labelId)
SELECT
    (SELECT COALESCE(MAX(songLabelId), 0) + 1 FROM songLabel),
    (SELECT MAX(songId) FROM song),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO songLabelVersion (songLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(songLabelId) FROM songLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_POINT_NEMO.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add ::POINT_NEMO:: S15

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add ::POINT_NEMO:: S17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add ::POINT_NEMO:: S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add ::POINT_NEMO:: S23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add ::POINT_NEMO:: D19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add ::POINT_NEMO:: D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add ::POINT_NEMO:: D26

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 26);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Passacaglia II

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Passacaglia II';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('SYNTHWULF')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'ORIGINAL');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    170,
    400;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0304';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0304'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Passacaglia II';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '파사칼리아 2';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Passacaglia_II.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Passacaglia II S13

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Passacaglia II S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Passacaglia II S19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Passacaglia II S22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Passacaglia II D16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Passacaglia II D20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Passacaglia II D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add ELEVATE

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'ELEVATE';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Jorts')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'ORIGINAL');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    174,
    174;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0305';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0305'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'ELEVATE';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '엘러베이트';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_ELEVATE.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add ELEVATE S4

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 4);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE S7

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE S11

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE S18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE D13

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE D18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE D20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ELEVATE D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'ULTRA SYNERGY MATRIX';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Tanchiky')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'WORLD MUSIC');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    160,
    160;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0306';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0306'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'ULTRA SYNERGY MATRIX';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '울트라 시너지 매트릭스';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_ULTRA_SYNERGY_MATRIX.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add ULTRA SYNERGY MATRIX S4

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 4);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX S7

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX S10

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 10);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX S18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX D15

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX D20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add ULTRA SYNERGY MATRIX H12

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 12);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add ULTRA SYNERGY MATRIX H20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add ULTRA SYNERGY MATRIX H23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Bamboo

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Bamboo';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('RISH')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Choko')),
    1,
    'feat.';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'WORLD MUSIC');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    5,
    315;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0307';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0307'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Bamboo';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '뱀부';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Bamboo.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Bamboo S17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo S19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo S23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo D18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo D22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo D25

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 25);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Bamboo H18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Bamboo H22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Bamboo H24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add untitled

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'untitled';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Apo11o program')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('NOMA')),
    1,
    '&';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Hana Kagenui')),
    2,
    'ft.';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('K')),
    3,
    '&';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'RISE');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    200,
    200;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0308';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0308'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'untitled';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '무제';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songLabel (songLabelId, songId, labelId)
SELECT
    (SELECT COALESCE(MAX(songLabelId), 0) + 1 FROM songLabel),
    (SELECT MAX(songId) FROM song),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO songLabelVersion (songLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(songLabelId) FROM songLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_untitled.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add untitled S13

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled S18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled D17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled D21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add untitled H17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add untitled H21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add untitled H24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Time wanderer

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Time wanderer';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('uma')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'RISE');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    183,
    183;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0309';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0309'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Time wanderer';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '타임 원더러';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songLabel (songLabelId, songId, labelId)
SELECT
    (SELECT COALESCE(MAX(songLabelId), 0) + 1 FROM songLabel),
    (SELECT MAX(songId) FROM song),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO songLabelVersion (songLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(songLabelId) FROM songLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Time_wanderer.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Time wanderer S13

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer S19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer D15

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer D18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer D21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Time wanderer H14

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Time wanderer H18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Time wanderer H21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Time wanderer H23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Whitemare

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Whitemare';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Apo11o program')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('ChumuNote')),
    1,
    'ft.';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'RISE');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    153,
    153;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0310';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0310'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Whitemare';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '화이트메어';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songLabel (songLabelId, songId, labelId)
SELECT
    (SELECT COALESCE(MAX(songLabelId), 0) + 1 FROM songLabel),
    (SELECT MAX(songId) FROM song),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO songLabelVersion (songLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(songLabelId) FROM songLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Whitemare.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Whitemare S4

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 4);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare S7

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare S11

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare S16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare S18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare D14

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare D20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Whitemare H14

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Whitemare H19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Whitemare H22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Eagle Strike

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Eagle Strike';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('kanone')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'RISE');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    169,
    169;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0311';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0311'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Eagle Strike';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '이글 스트라이크';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songLabel (songLabelId, songId, labelId)
SELECT
    (SELECT COALESCE(MAX(songLabelId), 0) + 1 FROM songLabel),
    (SELECT MAX(songId) FROM song),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO songLabelVersion (songLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(songLabelId) FROM songLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Eagle_Strike.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Eagle Strike S15

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike S17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike S19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike S21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike D17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike D19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike D21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Eagle Strike H17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Eagle Strike H18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Eagle Strike H21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Eagle Strike H24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add new charts for existing songs



-- Add PHYSALIS H17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('PHYSALIS')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add PHYSALIS H20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('PHYSALIS')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add PHYSALIS H24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('PHYSALIS')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add PHYSALIS H26

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('PHYSALIS')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 26);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Assault TAXI H14

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Assault TAXI')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Assault TAXI H20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Assault TAXI')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Assault TAXI H23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Assault TAXI')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add L (PIU Edit) H19

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('L (PIU Edit)')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add L (PIU Edit) H23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('L (PIU Edit)')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add L (PIU Edit) H26

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('L (PIU Edit)')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 26);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Can I friend you on Bassbook? lol H11

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Can I friend you on Bassbook? lol')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Can I friend you on Bassbook? lol H20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Can I friend you on Bassbook? lol')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Can I friend you on Bassbook? lol H24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT songId
FROM (
    SELECT
        songId,
        COUNT(*) OVER () AS total_count
    FROM (
        SELECT
            s.songId,
            o.internalTitle AS operation,
            ROW_NUMBER() OVER (
                PARTITION BY s.songId
                ORDER BY va.ancestorSortOrder DESC
            ) AS rn
        FROM song s
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN operation o ON o.operationId = sv.operationId
        JOIN _derived_versionAncestor va ON va.ancestorId = sv.versionId
        WHERE va.versionId = (
            SELECT v.versionId
            FROM version v
            JOIN mix m ON m.mixId = v.mixId
            WHERE m.internalTitle = 'Phoenix 2'
            AND v.internalTitle = 'v1.02.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Can I friend you on Bassbook? lol')
        AND s.cutId = (SELECT cutId FROM cut WHERE internalTitle = 'Arcade')
    )
    WHERE rn = 1
    AND operation != 'DELETE'
)
WHERE total_count = 1);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'HDB'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) + 1 FROM chartLabel),
    (SELECT MAX(chartId) FROM chart),
    (SELECT labelId FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE');

INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    (SELECT MAX(chartLabelId) FROM chartLabel),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.03.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



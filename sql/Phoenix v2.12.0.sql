
-- Add Phoenix v2.12.0 version

INSERT INTO version (versionId, mixId, internalTitle, parentVersionId, sortOrder)
SELECT
    (SELECT MAX(versionId) + 1 FROM version),
    (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix'),
    'v2.12.0',
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.11.0'),
    (SELECT MAX(sortOrder) + 10 FROM version);



-- Add ancestors for Phoenix v2.12.0

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0'),
    d.ancestorId,
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0'),
    d.ancestorSortOrder
FROM _derived_versionAncestor d
    JOIN version v on d.versionId = v.versionId
    JOIN mix m on v.mixId = m.mixId
    WHERE m.internalTitle = 'Phoenix' AND v.internalTitle = 'v2.11.0';

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0'),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0');



-- Add new artists if they don't exist



-- Add ankimo
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'ankimo'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('ankimo'));

-- Add BlackY
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'BlackY'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('BlackY'));

-- Add MAX
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'MAX'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('MAX'));



-- Add new stepmakers if they don't exist



-- AbySS
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'AbySS'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AbySS'));

-- CONRAD
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'CONRAD'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD'));

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

-- NIMGO
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'NIMGO'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO'));

-- refos
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'refos'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos'));

-- SPHAM
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'SPHAM'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM'));

-- SUNNY
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'SUNNY'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY'));



-- Add new songs



-- Add SWEET WONDERLAND

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'SWEET WONDERLAND';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('MAX')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('ankimo')),
    1,
    'feat.';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'XROSS');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    170,
    170;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_2201';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_2201'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'SWEET WONDERLAND';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '스위트 원더랜드';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_SWEET_WONDERLAND.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add SWEET WONDERLAND S3

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 3);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND S5

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 5);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND S8

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 8);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND S12

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 12);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND S15

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND S17

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND S20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND D14

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND D18

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND D22

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add SWEET WONDERLAND CoOp(x2)

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Heliosphere

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Heliosphere';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('BlackY')),
    0,
    '';

INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = 'XROSS');

INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    182,
    182;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.12.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_2202';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_2202'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Heliosphere';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '헬리오스피어';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_Heliosphere.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Heliosphere S14

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Heliosphere S18

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Heliosphere S21

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Heliosphere S23

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Heliosphere D20

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Heliosphere D23

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Heliosphere D25

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add new charts for existing songs



-- Add Doppelganger CoOp(x2)

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Doppelganger')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('EXC')),
    0,
    '';



-- Add Odin CoOp(x2)

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Odin')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Murdoch vs Otada CoOp(x3)

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Murdoch vs Otada')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'C'),
    (SELECT difficultyId FROM difficulty WHERE value = 3);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Le Nozze di Figaro ~Celebrazione Remix~ CoOp(x2)

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Le Nozze di Figaro ~Celebrazione Remix~')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Euphorianic D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Euphorianic')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Conflict D18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Conflict')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Conflict D26

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Conflict')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('EXC')),
    0,
    '';



-- Add Rage of Fire S20

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Rage of Fire')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Rage of Fire D22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Rage of Fire')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Black Dragon D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Black Dragon')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Magical Vacation D21

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Magical Vacation')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Katkoi S22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Katkoi')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Katkoi D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Katkoi')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Moment Day D23

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Moment Day')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Yoropiku Pikuyoro! S22

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Yoropiku Pikuyoro!')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Yoropiku Pikuyoro! D24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Yoropiku Pikuyoro!')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Passacaglia D25

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('Passacaglia')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AbySS')),
    0,
    '';



-- Add All I Want For X-mas S15

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('All I Want For X-mas')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add All I Want For X-mas S17

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('All I Want For X-mas')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add All I Want For X-mas D16

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('All I Want For X-mas')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add All I Want For X-mas D18

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = 'Arcade')
            AND LOWER(s.internalTitle) = LOWER('All I Want For X-mas')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != 'DELETE'
        )
        WHERE rn = 1 AND total_count = 1
    );

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.12.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Revive charts



-- Revive La Cinquantaine S22

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT
  sub.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
   AND internalTitle = 'v2.12.0'),
  (SELECT operationId FROM operation WHERE internalTitle = 'REVIVE'),
  NULL
FROM (
  SELECT
    crv.chartId,
    cv.operationId,
    cr.modeId,
    cr.difficultyId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN (2, 8)
  AND v2.mixId NOT IN (2, 8)
  AND c.songId = 838
  AND v.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
   AND internalTitle = 'v2.12.0')
) AS sub
WHERE rn = 1 
AND operationId == (SELECT operationId FROM operation WHERE internalTitle = 'DELETE')
AND modeId=(SELECT modeId FROM mode WHERE internalAbbreviation = 'S')
AND difficultyId=(SELECT difficultyId FROM difficulty WHERE value = 22)



-- Revive La Cinquantaine D24

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT
  sub.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
   AND internalTitle = 'v2.12.0'),
  (SELECT operationId FROM operation WHERE internalTitle = 'REVIVE'),
  NULL
FROM (
  SELECT
    crv.chartId,
    cv.operationId,
    cr.modeId,
    cr.difficultyId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN (2, 8)
  AND v2.mixId NOT IN (2, 8)
  AND c.songId = 838
  AND v.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
   AND internalTitle = 'v2.12.0')
) AS sub
WHERE rn = 1 
AND operationId == (SELECT operationId FROM operation WHERE internalTitle = 'DELETE')
AND modeId=(SELECT modeId FROM mode WHERE internalAbbreviation = 'D')
AND difficultyId=(SELECT difficultyId FROM difficulty WHERE value = 24)



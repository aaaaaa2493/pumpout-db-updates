
-- Add Phoenix 2 v1.02.0 version

INSERT INTO version (versionId, mixId, internalTitle, parentVersionId, sortOrder)
SELECT
    (SELECT MAX(versionId) + 1 FROM version),
    (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2'),
    'v1.02.0',
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.01.0'),
    (SELECT MAX(sortOrder) + 10 FROM version);



-- Add ancestors for Phoenix 2 v1.02.0

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    d.ancestorId,
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    d.ancestorSortOrder
FROM _derived_versionAncestor d
    JOIN version v on d.versionId = v.versionId
    JOIN mix m on v.mixId = m.mixId
    WHERE m.internalTitle = 'Phoenix 2' AND v.internalTitle = 'v1.01.0';

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');



-- Add new artists if they don't exist



-- Add ASA
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'ASA'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('ASA'));

-- Add Dyon Joo
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Dyon Joo'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Dyon Joo'));

-- Add Ester
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Ester'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Ester'));

-- Add litmus*
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'litmus*'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('litmus*'));

-- Add neur6sia
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'neur6sia'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('neur6sia'));

-- Add Palami
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'Palami'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Palami'));

-- Add TAG
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'TAG'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('TAG'));

-- Add WyvernP
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'WyvernP'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('WyvernP'));

-- Add YENA
INSERT INTO artist (artistId, internalTitle)
SELECT
    (SELECT MAX(artistId) + 1 FROM artist),
    'YENA'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('YENA'));



-- Add new stepmakers if they don't exist



-- CONRAD
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'CONRAD'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD'));

-- DIESEL
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'DIESEL'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL'));

-- DulKi
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'DulKi'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi'));

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



-- Add NEMONEMO

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'NEMONEMO';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('YENA')),
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
     AND internalTitle = 'v1.02.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    138,
    138;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0201';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0201'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'NEMONEMO';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '네모네모';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_NEMONEMO.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add NEMONEMO S2

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO S4

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO S6

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 6);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO S10

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO S15

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO S18

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO S21

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO D11

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO D16

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO D19

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO D22

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add NEMONEMO CoOp(x2)

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Mephitz

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Mephitz';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('litmus*')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Ester')),
    1,
    'as';

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
     AND internalTitle = 'v1.02.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    195,
    195;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0202';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0202'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Mephitz';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '메피츠';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Mephitz.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Mephitz S12

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz S16

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz S18

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz S20

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz S22

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz D15

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz D18

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz D21

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Mephitz D24

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Falling Stars

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Falling Stars';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('WyvernP')),
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
     AND internalTitle = 'v1.02.0');

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
     AND internalTitle = 'v1.02.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0203';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0203'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Falling Stars';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '꼬리별';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Falling_Stars.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Falling Stars S9

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 9);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars S13

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars S17

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars S20

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars S22

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars D16

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars D20

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Falling Stars D24

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Until Defined

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Until Defined';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Palami')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Dyon Joo')),
    1,
    'feat.';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('neur6sia')),
    2,
    '&';

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
     AND internalTitle = 'v1.02.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    180,
    180;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0204';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0204'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Until Defined';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '언틸 디파인드';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Until_Defined.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Until Defined S12

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined S15

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined S19

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined S21

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined D16

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined D21

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined D23

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add Until Defined CoOp(x2)

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('refos')),
    0,
    '';



-- Add PHYSALIS

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'PHYSALIS';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('TAG')),
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
     AND internalTitle = 'v1.02.0');

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
     AND internalTitle = 'v1.02.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0205';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0205'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'PHYSALIS';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '피살리스';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_PHYSALIS.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add PHYSALIS S15

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS S19

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS S22

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS S24

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS D17

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS D20

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS D24

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add PHYSALIS D26

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Assault TAXI

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Assault TAXI';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('ASA')),
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
     AND internalTitle = 'v1.02.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    154,
    154;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '18XX_0206';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '18XX_0206'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Assault TAXI';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '어썰트 택시';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix2_Assault_TAXI.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Assault TAXI S13

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Assault TAXI S15

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Assault TAXI S18

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Assault TAXI S21

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Assault TAXI D14

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Assault TAXI D20

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Assault TAXI D23

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
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add new charts for existing songs



-- Add Transmission S9

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 9);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Transmission S15

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Transmission S21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Transmission S23

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Transmission D17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Transmission D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Transmission D25

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Transmission')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 25);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Chess and Chase S7

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase S10

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 10);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase S14

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase S17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase S20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase D12

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 12);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase D16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase D18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Chess and Chase D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Chess and Chase')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Sylaphz S14

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz S18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz S21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz S24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz D16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz D20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz D23

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Sylaphz D26

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Sylaphz')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 26);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Pastry mix S14

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Pastry mix S17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Pastry mix S20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Pastry mix S23

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Pastry mix D19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Pastry mix D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Pastry mix D25

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Pastry mix')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 25);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Love Witch S13

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch S18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch S21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch D16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch D18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch D20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Love Witch D23

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Love Witch')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Galactic Metronome S10

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 10);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome S15

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome S19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome S22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome S24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome D17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome D21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Galactic Metronome D26

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Metronome')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 26);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Under the Christmas Stars S2

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 2);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars S4

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 4);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars S7

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars S11

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars S15

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 15);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars S18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars D5

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 5);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars D13

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars D16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars D19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Under the Christmas Stars CoOp(x2)

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Under the Christmas Stars')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'C'),
    (SELECT difficultyId FROM difficulty WHERE value = 2);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Skybound S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add Skybound S18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add Skybound S20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add Skybound S22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add Skybound D20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add Skybound D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add Skybound D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Skybound')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DIESEL')),
    0,
    '';



-- Add DROP FRONT!ER S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add DROP FRONT!ER S19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add DROP FRONT!ER S22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add DROP FRONT!ER S25

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 25);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add DROP FRONT!ER D18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add DROP FRONT!ER D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add DROP FRONT!ER D27

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('DROP FRONT!ER')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 27);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('NIMGO')),
    0,
    '';



-- Add Morrighan S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Morrighan S18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Morrighan S20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Morrighan S22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Morrighan D20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Morrighan D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Morrighan D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Morrighan')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Galactic Terminus S3

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 3);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus S7

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus S11

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus S18

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 18);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus S20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus D13

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus D19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Galactic Terminus D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Galactic Terminus')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand S4

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 4);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand S7

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 7);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand S11

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 11);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand S19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand S21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand D14

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 14);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand D20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Last Stand D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Last Stand')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add The Deconstruction S13

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add The Deconstruction S17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add The Deconstruction S19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add The Deconstruction S22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add The Deconstruction D17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add The Deconstruction D20

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 20);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add The Deconstruction D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('The Deconstruction')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('JUNARE')),
    0,
    '';



-- Add Reincarnate in "A" S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Reincarnate in "A" S19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Reincarnate in "A" S22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Reincarnate in "A" S25

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 25);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Reincarnate in "A" D21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Reincarnate in "A" D24

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 24);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Reincarnate in "A" D27

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Reincarnate in "A"')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 27);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('FEFEMZ')),
    0,
    '';



-- Add Burning SuperNova S13

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 13);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova S16

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 16);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova S19

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 19);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova S21

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 21);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova S23

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'S'),
    (SELECT difficultyId FROM difficulty WHERE value = 23);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova D17

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 17);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova D22

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 22);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



-- Add Burning SuperNova D25

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
            AND v.internalTitle = 'v1.01.0'
        )
        AND LOWER(s.internalTitle) = LOWER('Burning SuperNova')
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
    (SELECT modeId FROM mode WHERE internalAbbreviation = 'D'),
    (SELECT difficultyId FROM difficulty WHERE value = 25);

INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix 2')
     AND internalTitle = 'v1.02.0'),
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
     AND internalTitle = 'v1.02.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('DulKi')),
    0,
    '';



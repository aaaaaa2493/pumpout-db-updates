
-- Add Phoenix v2.06.0 version

INSERT INTO version (versionId, mixId, internalTitle, parentVersionId, sortOrder)
SELECT
    (SELECT MAX(versionId) + 1 FROM version),
    (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix'),
    'v2.06.0',
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.05.0'),
    (SELECT MAX(sortOrder) + 10 FROM version);



-- Add ancestors for Phoenix v2.06.0

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0'),
    d.ancestorId,
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0'),
    d.ancestorSortOrder
FROM _derived_versionAncestor d
    JOIN version v on d.versionId = v.versionId
    JOIN mix m on v.mixId = m.mixId
    WHERE m.internalTitle = 'Phoenix' AND v.internalTitle = 'v2.05.0';

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0'),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');



-- Add new artists if they don't exist



-- Add DJ Myosuke
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'DJ Myosuke'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('DJ Myosuke'));

-- Add HiTECH NINJA
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'HiTECH NINJA'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('HiTECH NINJA'));

-- Add Laur
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'Laur'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Laur'));

-- Add MAX
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'MAX'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('MAX'));

-- Add Ras
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'Ras'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Ras'));

-- Add Reku Mochizuki
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'Reku Mochizuki'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Reku Mochizuki'));

-- Add Risa Yuzuki
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'Risa Yuzuki'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Risa Yuzuki'));

-- Add SHK
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'SHK'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('SHK'));

-- Add Sobrem
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'Sobrem'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Sobrem'));

-- Add STAYC
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'STAYC'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('STAYC'));

-- Add Zekk
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    'Zekk'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('Zekk'));



-- Add new stepmakers if they don't exist



-- AEVILUX
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'AEVILUX'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AEVILUX'));

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

-- GGWANG
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    'GGWANG'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG'));

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



-- Add E.O.N

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'E.O.N';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('HiTECH NINJA')),
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1501';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1501'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'E.O.N';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    'E.O.N';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_EON.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add E.O.N S7

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N S12

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N S15

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N S17

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N S19

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N S22

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N D13

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N D18

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N D21

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add E.O.N D24

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Festival of Death Moon

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Festival of Death Moon';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('SHK')),
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    204,
    204;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1502';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1502'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Festival of Death Moon';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '사월의 축제';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_Festival_of_Death_Moon.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Festival of Death Moon S3

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AEVILUX')),
    0,
    '';



-- Add Festival of Death Moon S5

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AEVILUX')),
    0,
    '';



-- Add Festival of Death Moon S11

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AEVILUX')),
    0,
    '';



-- Add Festival of Death Moon S14

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AEVILUX')),
    0,
    '';



-- Add Festival of Death Moon S18

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('AEVILUX')),
    0,
    '';



-- Add Festival of Death Moon S21

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Festival of Death Moon D11

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Festival of Death Moon D15

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Festival of Death Moon D19

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Festival of Death Moon D23

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Imaginarized City

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Imaginarized City';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Reku Mochizuki')),
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    156,
    156;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1503';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1503'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Imaginarized City';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '이매저너라이즈드 시티';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_Imaginarized_City.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Imaginarized City S7

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City S12

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City S16

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City S19

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City S21

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City D14

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City D18

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City D20

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Imaginarized City D23

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('GGWANG')),
    0,
    '';



-- Add Break Through Myself

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'Break Through Myself';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('DJ Myosuke')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Laur')),
    1,
    '&';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Risa Yuzuki')),
    2,
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1504';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1504'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Break Through Myself feat. Risa Yuzuki';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '브레이크 스루 마이셀프';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_Break_Through_Myself.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Break Through Myself S12

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself S15

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself S18

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself S21

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself S23

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself D17

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself D20

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself D23

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add Break Through Myself D25

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('CONRAD')),
    0,
    '';



-- Add EMOMOMO

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Arcade'),
    'EMOMOMO';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Ras')),
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    145,
    145;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1505';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1505'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'EMOMOMO';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '에모모모';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_EMOMOMO.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add EMOMOMO S3

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO S7

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO S10

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO S14

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO S16

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO S19

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO D12

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO D18

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add EMOMOMO D21

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Teddy Bear  [FULL]

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Full Song'),
    'Teddy Bear';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('STAYC')),
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    119,
    119;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1506';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1506'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Teddy Bear';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '테디베어';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_Teddy_Bear_Full.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Teddy Bear  [FULL] S12

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Teddy Bear  [FULL] S20

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Teddy Bear  [FULL] D22

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add DISTRICT V

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Remix'),
    'DISTRICT V';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Zekk')),
    0,
    '';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('MAX')),
    1,
    'vs';

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    178,
    178;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1507';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1507'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'DISTRICT V';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '디스트릭트 V';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_DISTRICT_V.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add DISTRICT V S13

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add DISTRICT V S18

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add DISTRICT V S22

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add DISTRICT V D20

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add DISTRICT V D24

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Jupin  [SHORT]

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = 'Short Cut'),
    'Jupin';

INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('Sobrem')),
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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    173,
    173;

INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.06.0');

INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '17XX_1508';

INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '17XX_1508'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    'Jupin';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'English'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    '쥬핀';

INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = 'Korean'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');
 
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/Phoenix_Jupin_Short.png',
    0;

INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;



-- Add Jupin  [SHORT] S12

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] S13

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] S14

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] S21

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] S22

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] S23

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] D16

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] D19

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] D20

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] D23

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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add Jupin  [SHORT] D24

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
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SPHAM')),
    0,
    '';



-- Add new charts for existing songs



-- Add Discord CoOp(x2)

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
            AND LOWER(s.internalTitle) = LOWER('Discord')
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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Horang Pungryuga CoOp(x2)

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
            AND LOWER(s.internalTitle) = LOWER('Horang Pungryuga')
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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Energy Synergy Matrix CoOp(x3)

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
            AND LOWER(s.internalTitle) = LOWER('Energy Synergy Matrix')
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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('SUNNY')),
    0,
    '';



-- Add Moonlight D24

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
            AND LOWER(s.internalTitle) = LOWER('Moonlight')
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
     AND internalTitle = 'v2.06.0');

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.06.0'),
    (SELECT operationId FROM operation WHERE internalTitle = 'INSERT'),
    NULL;

INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('EXC')),
    0,
    '';



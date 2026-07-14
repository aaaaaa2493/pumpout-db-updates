-- Add new exclusive labels

INSERT INTO label (labelId, internalTitle, sortOrder, description)
SELECT
    (SELECT MAX(labelId) + 1 FROM label),
    'PREMIUM MODE EXCLUSIVE',
    100,
    ''
WHERE NOT EXISTS (
    SELECT 1 FROM label WHERE internalTitle = 'PREMIUM MODE EXCLUSIVE'
);

INSERT INTO label (labelId, internalTitle, sortOrder, description)
SELECT
    (SELECT MAX(labelId) + 1 FROM label),
    'STEAM LINK EXCLUSIVE',
    110,
    ''
WHERE NOT EXISTS (
    SELECT 1 FROM label WHERE internalTitle = 'STEAM LINK EXCLUSIVE'
);



-- Add PREMIUM MODE EXCLUSIVE to the Phoenix Premium Mode songs

WITH premiumSong(internalTitle) AS (
    VALUES
        ('Altale'),
        ('Etude Op 10-4'),
        ('KUGUTSU'),
        ('CHAOS AGAIN'),
        ('Neo Catharsis'),
        ('PUPA'),
        ('TRICKL4SH 220'),
        ('PRiMA MATERiA'),
        ('Imperium'),
        ('Giselle'),
        ('Appassionata'),
        ('Hymn of Golden Glory'),
        ('Extreme Music School 2nd period'),
        ('E.O.N'),
        ('Crimson hood'),
        ('1948'),
        ('Super Akuma Emperor'),
        ('Dead End')
)
INSERT INTO songLabel (songLabelId, songId, labelId)
SELECT
    (SELECT COALESCE(MAX(songLabelId), 0) FROM songLabel)
        + ROW_NUMBER() OVER (ORDER BY s.songId),
    s.songId,
    l.labelId
FROM premiumSong ps
    JOIN song s ON LOWER(s.internalTitle) = LOWER(ps.internalTitle)
    JOIN cut c ON c.cutId = s.cutId AND c.internalTitle = 'Arcade'
    JOIN label l ON l.internalTitle = 'PREMIUM MODE EXCLUSIVE'
WHERE NOT EXISTS (
    SELECT 1
    FROM songLabel sl
    WHERE sl.songId = s.songId AND sl.labelId = l.labelId
);

WITH premiumSong(internalTitle) AS (
    VALUES
        ('Altale'),
        ('Etude Op 10-4'),
        ('KUGUTSU'),
        ('CHAOS AGAIN'),
        ('Neo Catharsis'),
        ('PUPA'),
        ('TRICKL4SH 220'),
        ('PRiMA MATERiA'),
        ('Imperium'),
        ('Giselle'),
        ('Appassionata'),
        ('Hymn of Golden Glory'),
        ('Extreme Music School 2nd period'),
        ('E.O.N'),
        ('Crimson hood'),
        ('1948'),
        ('Super Akuma Emperor'),
        ('Dead End')
),
firstPhoenixSongVersion AS (
    SELECT
        s.songId,
        sv.versionId,
        ROW_NUMBER() OVER (
            PARTITION BY s.songId
            ORDER BY v.sortOrder, v.versionId
        ) AS rowNumber
    FROM premiumSong ps
        JOIN song s ON LOWER(s.internalTitle) = LOWER(ps.internalTitle)
        JOIN cut c ON c.cutId = s.cutId AND c.internalTitle = 'Arcade'
        JOIN songVersion sv ON sv.songId = s.songId
        JOIN version v ON v.versionId = sv.versionId
        JOIN mix m ON m.mixId = v.mixId AND m.internalTitle = 'Phoenix'
        JOIN operation o ON o.operationId = sv.operationId AND o.internalTitle = 'INSERT'
)
INSERT INTO songLabelVersion (songLabelId, versionId, operationId, internalDescription)
SELECT
    sl.songLabelId,
    fpsv.versionId,
    o.operationId,
    NULL
FROM firstPhoenixSongVersion fpsv
    JOIN songLabel sl ON sl.songId = fpsv.songId
    JOIN label l ON l.labelId = sl.labelId AND l.internalTitle = 'PREMIUM MODE EXCLUSIVE'
    JOIN operation o ON o.internalTitle = 'INSERT'
WHERE fpsv.rowNumber = 1
AND NOT EXISTS (
    SELECT 1
    FROM songLabelVersion slv
    WHERE slv.songLabelId = sl.songLabelId AND slv.versionId = fpsv.versionId
);



-- Add PREMIUM MODE EXCLUSIVE to every chart of each Premium Mode song

WITH premiumSong(internalTitle) AS (
    VALUES
        ('Altale'),
        ('Etude Op 10-4'),
        ('KUGUTSU'),
        ('CHAOS AGAIN'),
        ('Neo Catharsis'),
        ('PUPA'),
        ('TRICKL4SH 220'),
        ('PRiMA MATERiA'),
        ('Imperium'),
        ('Giselle'),
        ('Appassionata'),
        ('Hymn of Golden Glory'),
        ('Extreme Music School 2nd period'),
        ('E.O.N'),
        ('Crimson hood'),
        ('1948'),
        ('Super Akuma Emperor'),
        ('Dead End')
)
INSERT INTO chartLabel (chartLabelId, chartId, labelId)
SELECT
    (SELECT COALESCE(MAX(chartLabelId), 0) FROM chartLabel)
        + ROW_NUMBER() OVER (ORDER BY ch.chartId),
    ch.chartId,
    l.labelId
FROM premiumSong ps
    JOIN song s ON LOWER(s.internalTitle) = LOWER(ps.internalTitle)
    JOIN cut c ON c.cutId = s.cutId AND c.internalTitle = 'Arcade'
    JOIN chart ch ON ch.songId = s.songId
    JOIN label l ON l.internalTitle = 'PREMIUM MODE EXCLUSIVE'
WHERE NOT EXISTS (
    SELECT 1
    FROM chartLabel cl
    WHERE cl.chartId = ch.chartId AND cl.labelId = l.labelId
);

WITH premiumSong(internalTitle) AS (
    VALUES
        ('Altale'),
        ('Etude Op 10-4'),
        ('KUGUTSU'),
        ('CHAOS AGAIN'),
        ('Neo Catharsis'),
        ('PUPA'),
        ('TRICKL4SH 220'),
        ('PRiMA MATERiA'),
        ('Imperium'),
        ('Giselle'),
        ('Appassionata'),
        ('Hymn of Golden Glory'),
        ('Extreme Music School 2nd period'),
        ('E.O.N'),
        ('Crimson hood'),
        ('1948'),
        ('Super Akuma Emperor'),
        ('Dead End')
),
firstPhoenixChartVersion AS (
    SELECT
        ch.chartId,
        cv.versionId,
        ROW_NUMBER() OVER (
            PARTITION BY ch.chartId
            ORDER BY v.sortOrder, v.versionId
        ) AS rowNumber
    FROM premiumSong ps
        JOIN song s ON LOWER(s.internalTitle) = LOWER(ps.internalTitle)
        JOIN cut c ON c.cutId = s.cutId AND c.internalTitle = 'Arcade'
        JOIN chart ch ON ch.songId = s.songId
        JOIN chartVersion cv ON cv.chartId = ch.chartId
        JOIN version v ON v.versionId = cv.versionId
        JOIN mix m ON m.mixId = v.mixId AND m.internalTitle = 'Phoenix'
        JOIN operation o ON o.operationId = cv.operationId AND o.internalTitle = 'INSERT'
)
INSERT INTO chartLabelVersion (chartLabelId, versionId, operationId, internalDescription)
SELECT
    cl.chartLabelId,
    fpcv.versionId,
    o.operationId,
    NULL
FROM firstPhoenixChartVersion fpcv
    JOIN chartLabel cl ON cl.chartId = fpcv.chartId
    JOIN label l ON l.labelId = cl.labelId AND l.internalTitle = 'PREMIUM MODE EXCLUSIVE'
    JOIN operation o ON o.internalTitle = 'INSERT'
WHERE fpcv.rowNumber = 1
AND NOT EXISTS (
    SELECT 1
    FROM chartLabelVersion clv
    WHERE clv.chartLabelId = cl.chartLabelId AND clv.versionId = fpcv.versionId
);

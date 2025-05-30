
-- Add Phoenix v2.09.1 version

INSERT INTO version (versionId, mixId, internalTitle, parentVersionId, sortOrder)
SELECT
    (SELECT MAX(versionId) + 1 FROM version),
    (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix'),
    'v2.09.1',
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.0'),
    (SELECT MAX(sortOrder) + 10 FROM version);



-- Add ancestors for Phoenix v2.09.1

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.1'),
    d.ancestorId,
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.1'),
    d.ancestorSortOrder
FROM _derived_versionAncestor d
    JOIN version v on d.versionId = v.versionId
    JOIN mix m on v.mixId = m.mixId
    WHERE m.internalTitle = 'Phoenix' AND v.internalTitle = 'v2.09.0';

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.1'),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.1'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.1'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
     AND internalTitle = 'v2.09.1');



-- Remove deleted songs



-- Remove Autumn Break

INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songId FROM song WHERE internalTitle = 'Autumn Break'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix') 
     AND internalTitle = 'v2.09.1'),
    (SELECT operationId FROM operation WHERE internalTitle = 'DELETE'),
    NULL;

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT
  sub.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
   AND internalTitle = 'v2.09.1'),
  (SELECT operationId FROM operation WHERE internalTitle = 'DELETE'),
  NULL
FROM (
  SELECT
    crv.chartId,
    cv.operationId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN (2, 8)
  AND v2.mixId NOT IN (2, 8)
  AND c.songId = (SELECT songId FROM song WHERE internalTitle = 'Autumn Break')
  AND v.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = 'Phoenix')
   AND internalTitle = 'v2.09.1')
) AS sub
WHERE rn = 1 
AND operationId != (SELECT operationId FROM operation WHERE internalTitle = 'DELETE');



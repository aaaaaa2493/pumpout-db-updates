-- Add RISE category

INSERT INTO category (categoryId, internalTitle, sortOrder)
SELECT
    (SELECT COALESCE(MAX(categoryId), 0) + 1 FROM category),
    'RISE',
    (SELECT COALESCE(MAX(sortOrder), 0) + 10 FROM category)
WHERE NOT EXISTS (
    SELECT 1 FROM category WHERE internalTitle = 'RISE'
);

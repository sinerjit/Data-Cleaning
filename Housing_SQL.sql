Select "SaleDate"
From housing

-- Populate Property Address Data

Select "PropertyAddress"
From housing
WHERE "PropertyAddress" is null


Select *
From housing
-- WHERE "PropertyAddress" is null
ORDER BY "ParcelID"


SELECT a."ParcelID", a."PropertyAddress", b."ParcelID", b."PropertyAddress", COALESCE(a."PropertyAddress", b."PropertyAddress") AS "MergedPropertyAddress"
FROM housing AS a
JOIN housing AS b
ON a."ParcelID" = b."ParcelID"
AND a."UniqueID " <> b."UniqueID "
WHERE a."PropertyAddress" IS NULL;


UPDATE housing AS a
SET "PropertyAddress" = CASE
   WHEN a."PropertyAddress" IS NULL THEN b."PropertyAddress"
   ELSE a."PropertyAddress"
END
FROM housing AS b
WHERE a."ParcelID" = b."ParcelID"
  AND a."UniqueID " <> b."UniqueID "
  AND a."PropertyAddress" IS NULL;
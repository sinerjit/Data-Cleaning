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


SELECT a."ParcelID", a."PropertyAddress", b."ParcelID", b."PropertyAddress"
FROM housing as a
JOIN housing as b
ON a."ParcelID" = b."ParcelID"
AND a."UniqueID " <> b."UniqueID "
WHERE a."PropertyAddress" is NULL;

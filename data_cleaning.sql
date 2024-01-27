-- Standardize Date Format

ALTER TABLE housing
ALTER COLUMN "SaleDate" TYPE DATE USING TO_DATE("SaleDate", 'Month DD, YYYY');

select *
FROM housing
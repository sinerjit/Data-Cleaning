# Data Cleaning Project

This project focuses on cleaning and organizing data from the "housing" table in the database. The key functions utilized in the project are briefly outlined below:

1. **Standardize Date Format:**
    - The "SaleDate" column is converted to a DATE type using the TO_DATE function to standardize the date format.

2. **Populate Property Address Data:**
    - The NULL values in the "PropertyAddress" column are identified and handled.
    - Merging duplicate records based on the "ParcelID" and updating NULL values in the "PropertyAddress" column.

3. **Breaking Out Address into Individual Columns (Address, City, State):**
    - The "PropertyAddress" column is split into separate columns for address, city, and state.

4. **Breaking Out Owner Address into Individual Columns (Address, City, State)**
    - The "OwnerAddress" column is split into separate columns for address, city, and state.

5. **Change Y and N to Yes and No in "Sold as Vacant" Field:**
    - The values 'Y' and 'N' in the "SoldAsVacant" column are updated to 'Yes' and 'No' respectively.

6. **Remove Duplicates:**
    - Duplicate records based on certain columns are identified using the ROW_NUMBER function and are subsequently removed.

7. **Delete Unused Columns:**
    - Unused columns such as "OwnerAddress," "TaxDistrict," and "PropertyAddress" are dropped from the table.

These functions collectively contribute to the cleaning and enhancement of the data for improved usability.





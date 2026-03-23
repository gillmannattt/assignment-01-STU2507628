## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: The raw dataset contained inconsistent date formats (e.g., DD-MM-YYYY and MM/DD/YYYY).
Resolution: All dates were converted into a standard YYYY-MM-DD format before loading into the dim_date table.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values in important fields like product category and store.
Resolution: NULL values were either replaced with default placeholders or removed if they affected data integrity.

### Decision 3 — Fixing Category Casing
Problem: Product categories had inconsistent casing (e.g., "electronics", "Electronics", "ELECTRONICS").
Resolution: All category values were standardized to proper case (e.g., "Electronics") to ensure consistency in analysis.

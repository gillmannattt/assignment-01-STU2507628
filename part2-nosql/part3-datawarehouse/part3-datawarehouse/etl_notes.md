## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset had inconsistent date formats such as DD/MM/YYYY and MM-DD-YYYY, which can cause errors in analysis.

Resolution: All dates were converted into a standard YYYY-MM-DD format before loading into the data warehouse. This ensures consistency and enables accurate time-based analysis.

---

### Decision 2 — Handling NULL Values
Problem: Some records had missing values in important fields like product category and store information.

Resolution: Missing values were either filled using default values (e.g., "Unknown") or removed if they were not useful for analysis. This ensured data completeness and reliability.

---

### Decision 3 — Category Normalization
Problem: Product categories had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".

Resolution: All category values were standardized to a consistent format (e.g., "Electronics"). This prevents duplication and ensures accurate aggregation during reporting.

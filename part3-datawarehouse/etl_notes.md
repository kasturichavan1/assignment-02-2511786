## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset had inconsistent date formats (e.g., DD-MM-YYYY and YYYY/MM/DD).
Resolution: All dates were converted into a standard YYYY-MM-DD format and stored in the dim_date table.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values for product category and store details.
Resolution: Missing values were either removed or replaced with default placeholders to maintain data consistency.

### Decision 3 — Fixing Category Casing
Problem: Product categories appeared in different cases (e.g., "electronics", "Electronics", "ELECTRONICS").
Resolution: All category values were standardized to proper case (e.g., "Electronics") before loading into the dim_product table.

## Anomaly Analysis

### Insert Anomaly
A new product cannot be added unless an order exists for it, since all data is stored in one table.

### Update Anomaly
If a customer's city changes, it must be updated in multiple rows, leading to inconsistency.

### Delete Anomaly
Deleting an order may remove all information about a product if it only appears once.

## Normalization Justification

Keeping all data in one table may appear simple, but it leads to redundancy and inconsistencies. For example, customer details like name and city are repeated for every order, increasing storage and risk of errors.

If a customer changes their city, it must be updated across multiple rows. Missing even one row leads to inconsistent data. Similarly, adding a new product is not possible unless it is part of an order, and deleting an order may remove all product information.

Normalization solves these issues by splitting data into separate tables such as Customers, Products, and Orders. This reduces redundancy and ensures data integrity through relationships.

Thus, normalization is essential for maintaining a reliable and scalable database system.

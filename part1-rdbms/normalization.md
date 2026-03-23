## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, a new product cannot be added independently unless it is associated with an order. For example, if a new product has no order_id, it cannot be inserted into the table. This makes it difficult to maintain product data separately.

### Update Anomaly
Customer details such as city are repeated across multiple rows. For instance, the same customer appears in multiple rows with the same city. If the customer’s city changes (e.g., from Mumbai to Pune), all rows must be updated. Missing even one row leads to inconsistent data.

### Delete Anomaly
If an order is deleted and it was the only record containing a specific product, then all information about that product is lost from the dataset. This leads to unintended data loss.


## Normalization Justification

Keeping all data in a single table may seem simple, but it creates several problems related to redundancy and data integrity. In the given dataset, customer, product, and order details are stored together, causing repeated data. For example, customer information like name and city appears multiple times for every order placed by that customer.

This repetition increases storage usage and makes updates error-prone. If a customer changes their city, the update must be applied to all rows where the customer appears. If any row is missed, it results in inconsistent data. Similarly, new products cannot be added without creating an order, and deleting an order may remove important product information.

Normalization solves these issues by dividing the data into separate tables such as Customers, Products, Orders, and Order_Items. Each table stores only relevant attributes, and relationships are maintained using primary and foreign keys. This eliminates redundancy and ensures consistency.

Therefore, normalization is not over-engineering but a necessary step to build a reliable, scalable, and maintainable database system.

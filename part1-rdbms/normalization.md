 Anomaly Analysis

Insert Anomaly
In the orders_flat.csv dataset, we cannot insert a new product unless there is an associated order. For example, if a new product is introduced but no customer has purchased it yet, we cannot store it in the table because order-related fields (like order_id) are required. This leads to data loss of potential products.

Update Anomaly
Customer information such as city or name is repeated across multiple rows. For instance, if a customer like "Rohan Iyer" appears in multiple orders, updating his city would require changes in all rows. If one row is missed, it leads to inconsistent data.

Delete Anomaly
If we delete a row containing the only order of a product, we also lose all information about that product. For example, deleting the only record of a product removes its existence from the database entirely.

---

Normalization Justification

Keeping all data in a single table may seem simpler, but it leads to redundancy, inconsistency, and anomalies. In the given dataset, customer details, product details, and sales representative data are repeated across multiple rows. This repetition increases storage usage and creates risks during updates.

For example, if a customer’s city changes, it must be updated in multiple rows. Missing even one row results in inconsistent data. Similarly, deleting a single order may remove all information about a product or customer, which is not desirable.

Normalization solves these problems by dividing the data into smaller, related tables such as customers, orders, products, and sales representatives. Each table stores unique information, reducing redundancy. Relationships between tables are maintained using foreign keys.

Thus, normalization is not over-engineering but a necessary step to ensure data integrity, consistency, and scalability in real-world database systems.

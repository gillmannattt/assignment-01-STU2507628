## Storage Systems

To meet the hospital’s requirements, a hybrid data architecture is used combining multiple storage systems.

For transactional patient records such as treatment history and billing, a relational database (RDBMS) like PostgreSQL is used. This ensures data consistency, integrity, and supports real-time updates required for hospital operations.

A Data Lake is used to store raw and unstructured data such as ICU device streams, doctor notes, and medical images. This allows scalable and cost-effective storage of large volumes of heterogeneous data.

A Data Warehouse is used for analytical reporting, such as monthly reports on bed occupancy and department-wise costs. It enables fast query performance and structured analysis.

A Vector Database is used for semantic search. Doctor queries in natural language are converted into embeddings, allowing retrieval of relevant patient history even when exact keywords do not match.

## OLTP vs OLAP Boundary

The OLTP system consists of the RDBMS where real-time patient records, transactions, and updates occur. This system is optimized for fast inserts, updates, and consistency.

The OLAP system begins once data is extracted from the transactional database and loaded into the data warehouse. The warehouse is optimized for complex queries, aggregations, and reporting.

The boundary between OLTP and OLAP is defined by the ETL pipeline, where transactional data is cleaned, transformed, and loaded into analytical storage systems.

## Trade-offs

One significant trade-off in this architecture is increased system complexity due to the use of multiple storage systems. Managing a data lake, warehouse, vector database, and streaming pipeline requires higher operational effort and coordination.

To mitigate this, centralized data orchestration tools and automation can be used to manage data pipelines efficiently. Additionally, clear data governance policies and monitoring systems can ensure data quality and system reliability.

Despite the complexity, this trade-off is justified because it allows the system to handle diverse data types, support AI applications, and scale efficiently with growing data needs.

## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal documents such as 500-page contracts. Keyword search relies on exact word matching, which means it may miss relevant results if the wording differs. For example, a search for "termination clauses" may not return sections labeled as "contract cancellation terms" even though they mean the same thing.

In contrast, a vector database uses embeddings to capture the semantic meaning of text. Instead of matching exact words, it understands the context and meaning behind a query. This allows it to retrieve relevant sections even if the wording is different.

In this system, the contracts would first be broken into smaller chunks, and each chunk would be converted into embeddings using a language model. These embeddings are then stored in a vector database. When a lawyer asks a question in plain English, the query is also converted into an embedding. The system then finds the most similar embeddings in the database and returns the relevant sections of the contract.

Thus, a vector database enables semantic search, improves accuracy, and makes it much easier for lawyers to retrieve precise information from large documents quickly.

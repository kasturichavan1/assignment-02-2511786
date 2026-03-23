## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts using natural language queries. Keyword-based systems rely on exact word matching, which means they may fail to capture the actual intent or meaning behind a query. For example, if a lawyer searches for "termination clauses", the system may miss relevant sections that use different wording such as "contract cancellation terms".

A vector database, on the other hand, uses embeddings to capture semantic meaning rather than exact keywords. Each section of the contract can be converted into vector embeddings, and the query can also be transformed into a vector. The system can then perform similarity search to find sections that are semantically related to the query, even if the exact words do not match.

This approach enables more accurate and context-aware retrieval of information. In this case, the vector database would store embeddings of contract sections and allow efficient similarity-based search. This significantly improves the ability to handle natural language queries and retrieve relevant legal information quickly and effectively.

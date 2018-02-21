Cassandra

- Rule of thumb, only performant queries involve only going to a single partition
- If you want a different query, make multiple tables for each query
- Do ordering of return during table creation. (ie. add DESC to cluster key during table creation). Might actually have multiple tables if you often want to query using ASC and DESC)
- Design tables around the query that will be performed
## AdventureWorks for PostgreSQL - Initial Release

This release provides a complete PostgreSQL implementation of Microsoft's AdventureWorks sample database, originally designed for SQL Server.

### Features

- **Full database schema** with all tables, views, and relationships
- **Complete data import** from the original AdventureWorks OLTP dataset
- **XML support** with 6 XML-based views
- **Materialized views** for improved query performance
- **Foreign key constraints** properly implemented
- **Convenience views** for simplified querying (e.g., `p.be` as alias for `person.businessentity`)
- **Docker support** for easy setup and deployment
- **HierarchyID column conversion** for organizational structures
- **GIF and Geospatial columns** support in Product and Address tables

### Installation

The database can be installed using:
- Direct PostgreSQL installation via `psql`
- Docker and docker-compose for containerized deployment

Full installation instructions are available in the repository README.

### Compatibility

This implementation provides 100% compatibility with the original AdventureWorks schema, adapted for PostgreSQL-specific features and data types.

### License

MIT License
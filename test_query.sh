#!/bin/bash
set -e

# Build the database from the schema
sqlite3 test.db < init.sql

# Run student query
sqlite3 -header -csv test.db < query.sql > result.txt

# Check result
diff -q result.txt expected.txt

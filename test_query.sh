#!/bin/bash

# Reset the database first (clean slate)
rm -f test.db

# Step 1: Create a new SQLite database
sqlite3 test.db < init.sql

# Step 2: Run student's query and save output
sqlite3 -header -csv test.db < query.sql > result.txt

# Step 3: Show result to user
echo "Query result:"
cat result.txt
echo ""

# Step 4: Compare with expected result
if diff -q result.txt expected.txt > /dev/null; then
    echo "✅ Query is correct"
else
    echo "❌ Query is incorrect. Here's the diff:"
    diff result.txt expected.txt
fi

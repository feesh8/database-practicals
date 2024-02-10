# Practical 1 - Introduction to Databases

This GitHub repository contains the introductory Practical 1 on databases. The aim was to familiarise ourselves with the basic concepts of databases and SQL.

## Content

1. SQLite Exploration:
   - Introduction to database creation and table composition.
   - Basic data insertion and retrieval operations.
   - Example queries, such as listing student names enrolled in a course.
2. SQL Queries:
   - Implementation of SQL queries corresponding to specific exercises.
   - Emphasis on understanding and executing basic SQL operations.
3. Query Plan:
   - Understanding query plans and their role in query optimization.
   - Analyzing query plans for various SQL queries.

## How to use it ?

### First part : Creation of a little database and some requests

The first part of this tutorial involves creating a database containing 3 tables: student ("etudiant"), teacher ("professeur") and subject ("enseignement").

To create the database you can run the following command:

```bash
sqlite3 db_name.db < tp1_part1.sql
```

We can now run queries on the `tp1_part1_requetes.sql` file:

```bash
sqlite3 db_name.db ".read tp1_part1_requetes.sql"
```

### Second part : Queries on a grocery shop database

To create the database you can run the following command:

```bash
sqlite3 grocery_shop.db < epicerie.sql
```

We can now run queries on the `tp1_part2.sql` file:

```bash
sqlite3 grocery_shop.db ".read tp1_part2.sql"
```

## Conclusion

This first practical enabled us to get to grips with the basic SQLite commands. It also enabled us to understand the basic logic of query creation and how the system works to respond to a query using the query plan.

You can find the report (in French) in the "report.pdf" file.

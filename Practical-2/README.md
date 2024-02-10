# Practical 2 - Designing a database

The aim of this practical work is to propose a solution for the company Petit Commerce by designing a database to address various challenges identified in the provided subject.

## Objectives

The primary objectives of this TP are:

- Design a database schema to address the challenges faced by Petit Commerce.
- Implement the proposed database solution to enhance data management and query capabilities.
- Provide examples of SQL queries for common tasks in Petit Commerce.

## Challenges and Solution

1. Customer Addresses
   - Problem: Unable to select customers from a specific region due to the single address field.
   - Solution: Split the Address column into two separate columns: one for postal address/street and the other for the city.
2. Data Deletion
   - Problem: Deleting rows removes both invoice and customer data due to the single "table" structure.
   - Solution: Create separate tables for clients and invoices to preserve data integrity.
3. Billing Data Entry
   - Problem: Inconsistent total price calculation due to manual entry of billing data.
   - Solution: Automate the calculation of VAT and total price based on unit price and quantity entered by employees.

## Database Schema

The proposed database schema consists of the following tables:

- Client: Contains client information (name, phone, address, city).
- Invoice: Stores invoice details (invoice number, client, product, quantity, unit price, VAT, total price, billing date).

The data provided by the teacher was minimal (see `PetitCommerce.xlsx`), making it impractical to create a separate tables like "Product". Instead, product information is included within the Invoice table to simplify the database structure.

You can find the report (in French) in the "report.pdf" file.

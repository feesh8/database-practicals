# Practical 4 - Designing a Database

The main objective of this TP is to become familiar with the design of database schemas, specifically creating conceptual data models (MCD) and logical data models (MLD) to understand the relationships between different tables.

## Exercise 1

In this first exercise, we are tasked with designing the database for an online electronics store. We will add the following four tables to the database:

The "products" table with attributes: product ID, brand, unit price, description, technical specifications, and category.
The "customer" table with attributes: customer ID, name, city, address, phone number, and email.
The "order" table with attributes: order ID, total price, order date, and order status.
The "supplier" table with attributes: supplier ID, name, city, address, phone number, and email.
We have the following MCD schema, with 3 associations:

"EFFECTUE" between customer and order.
"CONTIENT" between order and product.
"FOURNIT" between supplier and product.

From this MCD schema, we derive a relational schema (MLD). (See Report.pdf file)

## Exercise 2

In this second exercise, we are tasked with designing a database for a car rental company operating in multiple countries. We will add the following four tables to the database:

The "Branch" table with attributes: branch ID, city name, country, address, postal code, and phone number.
The "Car" table with attributes: car ID, brand, model, year, category, availability, and daily rental price. It also includes the branch ID as a foreign key.
The "Reservation" table with attributes: reservation ID, start date of rental, end date, rental city, rental country, return city, return country, rented car, duration in days, and total price. The table also contains foreign keys containing the customer ID, car ID, departure branch ID, and arrival branch ID.
The "Customer" table with attributes: customer ID, name, address, city, country, phone number, email, and driver's license number.

We have created a conceptual data model (MCD) using Mocodo, outlining the relationships between tables. (See Report.pdf file)

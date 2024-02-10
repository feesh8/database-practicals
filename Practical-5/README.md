# Practical 5 - Designing Databases

In this TP, we will work on two exercises focusing on database design using MySQLWorkbench.

## Exercise 1: Schedule Management

### Requirements Analysis

We need to create a database to manage schedules for classrooms, students, and teachers. The database should allow access to schedules for a given hour and prevent duplicates. For example, a teacher cannot teach two different classes at the same time.

We will model the following scenarios:

Multiple groups from one or more programs may attend the same class.
The choice of classroom may depend on the number of students and the type of class (tutorial, practical, lecture).

### Version 1: Schema with Essential Elements

This version contains essential elements such as the "Course," "Student," and "Teacher" tables.

### Version 2: More Detailed Schema

This version allows for linking students to specific programs and modules, enabling the retrieval of students enrolled in a specific program or course.

### Version 3: Final Version

This version introduces additional tables such as "Room," "Time Slot," and "Room has Time Slot" to provide more detailed temporal information.

(See Report.pdf file for all Schema)

## Exercise 2: Bibliographic References Database

### Requirements Analysis

We need to create a database to manage bibliographic references for books provided by teachers at the beginning of courses. The database should allow access to collections by academic year or program and assign importance to each book based on the number of times it is proposed.

### Schema Summary (See Report.pdf file)

This schema includes tables such as "Teacher," "Course," "Book," "Program," "Year," "Course_has_Book," "Program_has_Course," and "Year_has_Book."

## Exercise 3: Advanced Features

In this exercise, we aim to create triggers and views to enhance the functionality of the bibliographic references database.

- Trigger for Book Modifications : We create a trigger to update the modification date in the "Book" table every time a modification is made.

- View for All Proposed Books : We create a view that contains all the books proposed, which is updated automatically as new entries are added to the "Book" table.

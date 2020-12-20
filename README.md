# MySQL Homework

**Introduction to Computer, 2020 Fall**

- TAs
> Lin Cheng Wei
>
> Chung Chi Ming
- Instructor
> Winston Hsu



## Introduction

MySQL is a relational database management system. You are asked to learn basic queries in MySQL. In this homework, there are 5​ questions, 20%​ per question, and you need to fill in each of the corresponding queries.
1. Which planets did Darth Vader visit in movie 2?
2. Find all characters that never visited any rebels planets.
3. Who visited planets of his/her affiliation in movie 1?
4. Which planet(s) has been visited by more than three different characters?
5. For each movie, which character(s) visited the highest number of planets?

Note that ``Which planets`` is to list the planet names, ``Who`` and ``Find all characters`` are to list the character names, and ``For each movie, which character`` is to list the movie number and character name in pairs.



## Database

We use the [star war](https://www.starwars.com/databank) database containing three files: ``TimeTable.csv``, ``Characters.csv`` and ``Planets.csv``
- ``TimeTable.csv`` records for each character and movie, what planet and when did the character go to.
- ``Characters.csv`` contains for each character, what is his/her homeworld and affiliation.
- ``Planets.csv`` records the information about each planet.



## MySQL Environment

To save your time, we don't asked you to build SQL environment in Linux system from scratch. Instead, you can use [sqlite](https://sqliteonline.com) with the database TAs have pre-built to test online.
- Press **File/Open DB** and select the sqlite.db file we gave you to create the environment.
- Press **File/Save SQL** to save your current sql code as a file.
- Please **make copy of your and codes** when using sqlite. TAs are not responsible for your lost of codes online.
- If you are interested in how to build environment on your own, please refer to [homework](https://github.com/amjltc295/SQL_Homework) the year before last year. Also, there are more queries for you to practice.



## Submission

- Please upload your SQL file directly to Ceiba.
- Please make sure your .sql file is able to run on [sqlite](https://sqliteonline.com)


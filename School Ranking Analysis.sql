#(1) Write a query to create a students table with appropriate data types for student id, student first name, student last name, class, and age where the student last name, student first name, and student id should be a NOT NULL constraint, and the student id should be in a primary key.
-- (Create database first, then use the name of database created, followed by the create table command listing them using int or varchar not null and placing primary key next to the selected column)
Create database school_ranking;
Use school_ranking;
Create table students(
student_id int not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
class int not null,
age int not null
);

#(2) Write a query to create a marksheet table that includes score, year, ranking, class, and student id --(use the create table command followed by the column names (varchar or int))
use school_ranking;
Create table marksheet(
score int,
year int,
ranking int,
class int,
student_id int
);

#(3) Write a query to insert values in students and marksheet tables -- (use the insert into command followed by values) 
insert into students(student_id, first_name, last_name, class, age)
values
(1, 'krishna', 'gee', 10, 18),
(2, 'Stephen', 'Christ', 10, 17),
(3, 'Kailash', 'kumar', 10, 18),
(4, 'ashish', 'jain', 10, 16),
(5, 'khusbu', 'jain', 10, 17),
(6, 'madhan', 'lal', 10, 16),
(7, 'saurab', 'kothari', 10, 15),
(8, 'vinesh', 'roy', 10, 14),
(9, 'rishika', 'r', 10, 15),
(10, 'sara', 'rayan', 10, 16),
(11, 'rosy', 'kumar', 10, 16);

Insert into marksheet(score, year, ranking, class, student_id)
values
(989, 2014, 10, 1, 1),
(454, 2014, 10, 10, 2),
(880, 2014, 10, 4, 3),
(870, 2014, 10, 5, 4),
(720, 2014, 10, 7, 5),
(670, 2014, 10, 8, 6),
(900, 2014, 10, 3, 7),
(540, 2014, 10, 9, 8),
(801, 2014, 10, 6, 9),
(420, 2014, 10, 11, 10),
(970, 2014, 10, 2, 11),
(720, 2014, 10, 12, 12);

#(4) Write a query to display student id and student first name from the student table if the age is greater than or equal to 16 and the student's last name is Kumar -- (start with select the two select columns from the chosen table (where command) the range)
Select student_id, first_name
From students
Where age >= 16 and last_name = 'kumar';

#(5) Write a query to display all the details from the marksheet table if the score is between 800 and 1000 -- (start with select * from selected table where selected column (between command) the two numbers)
Select * From marksheet where score between 800 and 1000;

#(6) Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by naming the column as new score -- (start with select * (comma) paratheses score + symbol 5 as new column name from selected table)
Select *, (score + 5) As new_score from marksheet;

#(7) Write a query to display the marksheet table in descending order of the  score -- (use Order by command)
Select * from marksheet order by score desc; 

#(8) Write a query to display details of the students whose first name starts with a
Select * from students where first_name like "a%";

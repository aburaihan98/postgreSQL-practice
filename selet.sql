
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL UNIQUE,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES  ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
  ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');

SELECT * FROM students;

SELECT DISTINCT country FROM students ORDER BY first_name ASC;

SELECT DISTINCT country FROM students 

SELECT * FROM students 
     WHERE country = 'USA'

     
SELECT * FROM students 
     WHERE grade = 'A' AND course = 'Math'

SELECT * FROM students 
     WHERE country = 'USA' OR country = 'Australia'

SELECT * FROM students 
     WHERE (country = 'USA' OR country = 'Australia') AND age >= 20

SELECT * FROM students 
     WHERE  age >= 20

SELECT * FROM students 
     WHERE  country <> 'USA'


SELECT * FROM students 
     WHERE  age != 20 


SELECT upper(first_name), * FROM students

SELECT * FROM students
WHERE email is NOT NULL

SELECT COALESCE(email, 'Email not provided'), age FROM students

SELECT * FROM students 
      WHERE country IN('USA', 'UK')


SELECT * FROM students 
      WHERE country NOT IN('USA', 'UK')

SELECT * FROM students 
      WHERE age BETWEEN 19 and 23

SELECT * FROM students 
      WHERE dob BETWEEN '2000-01-01' and '2005-01-01' ORDER BY dob ASC

SELECT * FROM students 
      WHERE first_name LIKE '%ia'

SELECT * FROM students 
      WHERE first_name LIKE 'A%'

SELECT * FROM students 
      WHERE first_name LIKE '__a%'

SELECT * FROM students 
      WHERE first_name LIKE '__a_'

SELECT * FROM students 
      WHERE first_name ILIKE 'a%'

SELECT * FROM students 
      LIMIT 5

SELECT * FROM students 
    WHERE country IN('USA', 'UK')  LIMIT 5

SELECT * FROM students 
    WHERE country IN('USA', 'UK')  LIMIT 2 OFFSET 2

SELECT * FROM students 
    LIMIT 5 OFFSET 5 * 0

SELECT * FROM students 
    LIMIT 5 OFFSET 5 * 1

SELECT * FROM students 
    LIMIT 5 OFFSET 5 * 2

SELECT * FROM students 

DELETE FROM students 
    WHERE age = 20

SELECT * FROM students 

UPDATE students 
    SET email = 'update@email.com', age = 30
    WHERE age = 19
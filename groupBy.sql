
SELECT country, count(*), avg(age) FROM students
       GROUP BY country

SELECT country, count(*), avg(age) FROM students
       GROUP BY country
       HAVING avg(age) > 22

SELECT extract(YEAR FROM dob) as birth_year, count(*) FROM students
       GROUP BY birth_year
       

    
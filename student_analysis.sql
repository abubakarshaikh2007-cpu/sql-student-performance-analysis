CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    gender VARCHAR(10),
    marks INT,
    attendance INT,
    department VARCHAR(30)
);

INSERT INTO students VALUES
(1, 'Ali', 'Male', 78, 85, 'IT'),
(2, 'Ayesha', 'Female', 88, 92, 'CS'),
(3, 'Rahul', 'Male', 45, 60, 'IT'),
(4, 'Fatima', 'Female', 90, 95, 'CS'),
(5, 'Arjun', 'Male', 55, 70, 'ECE'),
(6, 'Sara', 'Female', 72, 80, 'IT');


1️⃣ Show all students

SELECT * FROM students;
2️⃣ Students scoring more than 70

SELECT name, marks
FROM students
WHERE marks > 70;
3️⃣ Average marks by department

SELECT department, AVG(marks) AS average_marks
FROM students
GROUP BY department;
4️⃣ Students with good attendance (>75)

SELECT name, attendance
FROM students
WHERE attendance > 75;
5️⃣ Pass / Fail using CASE

SELECT name, marks,
CASE
    WHEN marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM students;
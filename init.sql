DROP TABLE IF EXISTS results;
DROP TABLE IF EXISTS students;

-- Create student table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    grade_level INTEGER
);

-- Create results table
CREATE TABLE results (
    student_id INTEGER,
    subject TEXT,
    score INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert student records
INSERT INTO students VALUES 
(1, 'Alice', 11),
(2, 'Bob', 12),
(3, 'Chloe', 11),
(4, 'David', 11),
(5, 'Ella', 12),
(6, 'Farah', 11),
(7, 'George', 10),
(8, 'Hannah', 11),
(9, 'Ibrahim', 12),
(10, 'Jasmine', 11);

-- Insert results for multiple subjects
INSERT INTO results VALUES
(1, 'Math', 88),
(2, 'Math', 72),
(3, 'Math', 91),
(4, 'Math', 64),
(5, 'Math', 77),
(6, 'Math', 85),
(7, 'Math', 70),
(8, 'Math', 90),
(9, 'Math', 82),
(10, 'Math', 95),

(1, 'English', 75),
(2, 'English', 85),
(3, 'English', 78),
(4, 'English', 63),
(5, 'English', 92),
(6, 'English', 88),
(7, 'English', 70),
(8, 'English', 83),
(9, 'English', 74),
(10, 'English', 90);

create table courses(
course_id int,
course_name varchar(20),
course_code varchar (10),
credits int
);
-- Add a column `address` to the `students` table
alter table students
add address varchar (30);

-- 
alter table courses
modify credits int
after course_name;
--
alter table students
rename column dob to date_of_birth;
--
insert into students
values (1, "Sarah", "Alex", 2005-01-01, "ei@sad.com", 201-190-223, "102 grant rd NJ"),
	   (2, "Emma", "Thomas", 2002-01-05, "sgaf@hhj.com", 223-897-098, "22 ingram st NC"),
       (3, "Laura", "David", 2001-05-05, "laud@laud.com", 403-333-102, "12 kok st LV"),
       (4, "Chloé", "Daniel", 2005-05-05, "chldaniel@gmail.com", 403-333-102, "2nd ave drive"),
       (5, "Marie", "KEVIN", 2010-05-03, "mk@yahoo.com", 409-323-702, "3rd str ave"),
       (6, "Emily", "Michael", 2004-10-05, "emichael@hotmail.com", 241-729-509, "5th ave district"),
       (7, "Léa", "Nicolas", 1999-10-05, "lean@lean.com", 896-654-098, "6th dist ave"),
       (8, "Camille", "James", 1999-07-04, "camjames@james.com", 123-076-509, "7th dist ave"),
       (9, "Anna", "John", 2010-02-08, "ajohn@john.com", 290-321-765, "8th dist ave"),
       (10, "Manon", "Lucas", 1980-05-09, "mano.lucas@gmail.com", 109-234-654, "9th dist ave"),
       (11, "Julie", "Anthony", 2010-07-09, "juliant@anthony.com", 298-908-432, "10th dist ave"),
       (12, "Hannah", "Julien", 1970-09-08, "han@han.com", 206-876-507, "11th dist ave"),
       (13, "Jessica", "Alexandre", 1980-09-06, "jess@jess.com", 908-659-406, "12th dist ave"),
       (14, "Pauline", "Paul", 2001-05-01, "pp@pp.com", 207-543-864, "13th dist ave"),
       (15, "Charlotte", "Kim", 1999-07-04, "charl@kim.com", 876-507-352, "14th dist ave"),
       (16, "Mathilde", "Maxime", 2012-05-03, "mathmax@max.com", 506-305-843, "15th dist ave"),
       (17, "Kim", "Jack", 2013-03-01, "kim1@jack.com", 706-308-521, "16th ave Ny"),
       (18, "Marine", "Lee", 2010-05-03, "marin@lee.com", 605-406-321, "17th ave La"),
       (19, "Alice", "Eric", 2011-03-02, "alice@eric.com", 321-539-950, "18th str Fl"),
       (20, "Sophie", "Samuel", 1980-06-02, "sophies@gmail.com", 706-539-726, "19th str ave"),
       (21, "Julia", "Ryan", 2011-08-03, "juliryan@me.com", 408-208-521, "20th str ave"),
       (22, "Lisa", "Nathan", 1999-05-09, "lisana@nathan.com", 869-543-621, "21th str ave"),
       (23, "Maria", "Antoine", 2012-04-07, "maria@antoine.com", 706-532-970, "22nd str ave"),
       (24, "Claire", "Chris", 2013-04-09, "clarch@clarch.com", 208-605-423, "23rd ave NJ"),
       (25, "Sara", "Jordan", 2001-03-03, "sara@jordan.com", 297-506-304, "24th str ave"),
       (26, "Anaïs", "Ben", 2007-05-07, "an@ben.com", 504-506-642, "25th str ave"),
       (27, "lucie", "Jacob", 2008-05-01, "luc@jac.com", 869-423-098, "26th str ave"),
       (28, "Rachel", "Benjamin", 2004-09-02, "racben@yahoo.com", 970-453-091, "27th str ave"),
       (29, "Marion", "Joseph", 2003-01-03, "marion@marion.com", 654-621-789, "28th str ave"),
       (30, "Clara", "Pierre", 2002-04-02, "clara.pier@gmail.com", 759-098-423, "29th str ave");
       
       --
       alter table courses
       modify credits int
       after course_code;
       
       --
       INSERT INTO courses (course_id, course_name, course_code, credit) VALUES
(1, 'Computer Science', 'CS101', 3),
(2, 'Calculus I', 'MATH101', 4),
(3, 'English Literature', 'ENG201', 3),
(4, 'Biology', 'BIO101', 4),
(5, 'Chemistry', 'CHEM101', 4),
(6, 'Physics', 'PHY101', 4),
(7, 'History', 'HIST101', 3),
(8, 'Psychology', 'PSY101', 3),
(9, 'Art', 'ART101', 3),
(10, 'Music Theory', 'MUS101', 3);

--

       alter table grades
       modify grade char (20);
       

INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 'CS101', '2024-09-01'),
(2, 1, 'MATH101', '2024-09-01'),
(3, 2, 'ENG201', '2024-09-02'),
(4, 2, 'BIO101', '2024-09-02'),
(5, 3, 'CHEM101', '2024-09-03'),
(6, 3, 'PHY101', '2024-09-03'),
(7, 4, 'HIST101', '2024-09-04'),
(8, 5, 'PSY101', '2024-09-05'),
(9, 6, 'ART101', '2024-09-06'),
(10, 7, 'MUS101', '2024-09-07'),
(11, 1, 'BIO101', '2024-09-08'),
(12, 5, 'MATH101', '2024-09-09');

--
INSERT INTO grades (grade_id, enrollment_id, grade)
VALUES
    (1, 1001, 'A'),
    (2, 1002, 'B'),
    (3, 1003, 'A-'),
    (4, 1004, 'C'),
    (5, 1005, 'B+');
    
    --
    select concat(s.first_name, ' ', s.last_name) as Full_name, c.course_name
                     from students as s
                     join enrollments as e on s.student_id = e.student_id
                     join courses as c on e.course_id = c.course_id;
                     --
                     select s.student_id, concat(s.first_name, ' ', s.last_name) as full_name
                     from students as s
                     left join enrollments as e on e.student_id = e.student_id
                     left join grades as g on e.enrollment_id = g.enrollment_id
                     where g.enrollment_id is null;
                     
                     --
                     SELECT 
    c.course_name,
    AVG(g.grade) AS average_grade
FROM 
    courses c
JOIN 
    grades g ON c.course_id = g.grade_id
GROUP BY 
    c.course_name;
    
    --
    
    SELECT 
    grade_id,
    grade AS numerical_grade,
    CASE 
        WHEN grade >= 90 THEN 'A'
        WHEN grade >= 80 THEN 'B'
        WHEN grade >= 70 THEN 'C'
        WHEN grade >= 60 THEN 'D'
        ELSE 'F'
    END AS letter_grade
FROM 
    grades;
    --
    SELECT 
    s.student_id,
    CONCAT(s.first_name, ' ', s.last_name) AS full_name,
    g.grade,
    c.course_name
FROM 
    students s
JOIN 
    grades g ON s.student_id = g.grade_id
JOIN 
    courses c ON g.grade_id = c.course_id
WHERE 
    g.grade = (
        SELECT MAX(g.grade_id)
        FROM grades
        WHERE g.grade_id = g.grade_id      
);

--
WITH StudentCourses AS (
    SELECT 
        s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS full_name,
        c.course_name,
        g.grade
    FROM 
        students s
    JOIN 
        grades g ON s.student_id = g.grade_id
    JOIN 
        courses c ON g.grade_id = c.course_id
)

SELECT 
    student_id,
    full_name,
    course_name,
    grade
FROM 
    StudentCourses
ORDER BY 
    student_id, course_name;
    
    --
    WITH CourseCounts AS (
    SELECT 
        s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS full_name,
        COUNT(e.course_id) AS course_count
    FROM 
        students s
    JOIN 
        enrollment e ON s.student_id = e.student_id
    GROUP BY 
        s.student_id, s.first_name, s.last_name
)

SELECT 
    student_id,
    full_name,
    course_count
FROM 
    CourseCounts
WHERE 
    course_count > 2;
    --
    
    SELECT 
    c.course_name,
    COUNT(e.student_id) AS student_count
FROM 
    courses c
LEFT JOIN 
    enrollments e ON c.course_id = e.course_id
GROUP BY 
    c.course_name;
    --
    SELECT 
    (SELECT COUNT(*) FROM students) AS total_students,
    (SELECT COUNT(*) FROM courses) AS total_courses,
    (SELECT COUNT(*) FROM enrollments) AS total_enrollments;
    
    --
    SELECT 
    s.student_id,
    c.course_name
FROM 
    students s
CROSS JOIN 
    courses c
LEFT JOIN 
    enrollments e ON s.student_id = e.student_id AND c.course_id = e.course_id
WHERE 
    e.student_id IS NULL;
    
    --
    SELECT 
    s.first_name,
    s.last_name
FROM 
    students s
WHERE 
    s.last_name IN (
        SELECT 
            last_name
        FROM 
            students
        GROUP BY 
            last_name
        HAVING 
            COUNT(*) > 1
    )
ORDER BY 
    s.last_name, s.first_name;
    
    --
    CREATE TABLE dropped_courses AS 
SELECT *
FROM enrollments
WHERE 1 = 0;
--
INSERT INTO dropped_courses
SELECT *
FROM enrollments
WHERE grade = 'c';
--
DELETE FROM grades
WHERE grade < 50;
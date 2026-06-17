SELECT course_id, course_name
FROM courses
WHERE course_name LIKE '%';

SELECT email, COUNT(*) AS email_count
FROM student
GROUP BY email
HAVING COUNT(*) > 1;

SELECT student_id,
       course_id,
       COUNT(DISTINCT grade) AS grade_count
FROM enrollments
GROUP BY student_id, course_id
HAVING COUNT(DISTINCT grade) > 1;

SELECT department_id,
       salary,
       COUNT(*) AS professor_count
FROM professors
GROUP BY department_id, salary
HAVING COUNT(*) > 1;

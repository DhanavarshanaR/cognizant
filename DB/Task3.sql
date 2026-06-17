ALTER TABLE student
ADD COLUMN phone_number VARCHAR(15);

ALTER TABLE courses
ADD COLUMN max_seats INT DEFAULT 60;

ALTER TABLE enrollments
DROP CHECK chk_valid_grade;

ALTER TABLE enrollments
ADD CONSTRAINT chk_valid_grade
CHECK (grade IN ('A', 'B', 'C', 'D', 'F') OR grade IS NULL);

ALTER TABLE departments
RENAME COLUMN hod_name TO head_of_dept;

ALTER TABLE student
DROP COLUMN phone_number;

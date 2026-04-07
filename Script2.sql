SELECT *FROM student;

SELECT *FROM department;

DELETE FROM professor 
WHERE name='김태석';

SELECT student.name, student.stu_id, department.dept_name
FROM student, DEPARTMENT
WHERE student.dept_id = department.dept_id;

SELECT dept_id, dept_name
FROM department;

SELECT name, stu_id, dept_id
FROM student;

SELECT name, dept_name
FROM student,department
WHERE student.dept_id=department.dept_id;

SELECT student.stu_id, name
FROM student,department
WHERE student.dept_id=department.dept_id AND 
	student.YEAR=3 AND 
	department.dept_name='컴퓨터공학과';

SELECT name, stu_id
FROM STUDENt
WHERE YEAR=3 OR YEAR= 4
ORDER BY name desc,stu_id;

SELECT s.name, d.dept_name
FROM student s, DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID ;

SELECT address
FROM student 
WHERE name='김광식';

SELECT * FROM student WHERE address='서울';

SELECT s2.name
FROM student s1, student s2
WHERE s1.address=s2.address AND s1.name='김광식';


SELECT *
FROM student s1, student s2;


SELECT name AS 이름, POSITION 직위, 2026-year_emp 재직연수
FROM professor
ORDER BY name;

SELECT *
FROM STUDENT
WHERE name LIKE '김%';

SELECT *
FROM student
WHERE resident_id LIKE '%*2%' or RESIDENT_ID LIKE '%*4%'


SELECT name FROM student
UNION all
SELECT name FROM professor;  -- 합집합

SELECT * FROM professor;

SELECT * FROM student;

SELECT stu_id  
FROM student s, department d
WHERE s.dept_id=d.dept_id AND dept_name='컴퓨터공학과'
INTERSECT
SELECT stu_id
FROM takes
WHERE grade='A+';  --교집합

SELECT stu_id  --1292303,1292305
FROM student s, department d
WHERE s.dept_id=d.dept_id 
AND dept_name='산업공학과'
MINUS
SELECT stu_id  -- 1292001,1292003,1292303
FROM takes
WHERE grade='A+';  -- 차집합

SELECT title, credit, YEAR, semester, division
FROM course, class
WHERE course.course_id=class.course_id;

SELECT * FROM course;

SELECT * FROM class;






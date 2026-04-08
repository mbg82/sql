SELECT * FROM tab;

SELECT * FROM course;

SELECT * FROM class;

SELECT title, credit, YEAR, semester
FROM course, class
WHERE course.course_id = class.course_id;

SELECT title, credit, YEAR, semester, division
FROM course LEFT OUTER JOIN class
USING (course_id);

SELECT title, credit, YEAR, semester
FROM course, class
WHERE course.course_id=class.course_id(+);

SELECT title, credit, YEAR, semester
FROM course RIGHT OUTER JOIN class
USING (course_id);

SELECT title, credit, YEAR, semester
FROM course, CLASS 
WHERE course.course_id(+)=class.course_id;

SELECT title, credit, YEAR, semester
FROM course FULL OUTER JOIN CLASS 
USING (course_id);

SELECT count(dept_id)
FROM STUDENT;

SELECT count(DISTINCT dept_id)
FROM STUDENT;

SELECT count(comm)
FROM emp;

SELECT count(*)
FROM student s, department d
WHERE s.dept_id=d.dept_id AND d.dept_name='컴퓨터공학과';

SELECT 2026-year_emp
FROM professor;

SELECT * FROM professor;

SELECT * FROM emp;

SELECT * FROM dept;

SELECT * FROM emp,dept;

SELECT e.ename, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno AND ename='SMITH';

SELECT sum(sal)
FROM emp;

SELECT sum(sal)
FROM EMP
WHERE job='ANALYST'

SELECT sum(sal)
FROM emp e, dept d
WHERE e.deptno=d.deptno AND dname='RESEARCH'

SELECT avg(2026-year_emp)
FROM professor;

SELECT count(sal),max(sal), min(sal), avg(sal)
FROM emp e, dept d
WHERE e.deptno=d.deptno AND dname='ACCOUNTING'


SELECT dept_id, count(*)
FROM student
GROUP BY dept_id

SELECT * FROM student;

SELECT dept_name 학과, count(*) 학생수
FROM student s, department d
WHERE s.dept_id=d.dept_id
GROUP BY dept_name;

SELECT dname, count(*), avg(sal) 평균급여, max(sal) 최고급여, min(sal) 최저급여
FROM emp e, dept d
WHERE e.deptno=d.DEPTNO 
GROUP BY dname 

SELECT dept_name 학과명, count(*) 수, avg(2026-year_emp) 평균기간, max(2026-year_emp)최고기간
FROM professor p, department d
WHERE p.dept_id=d.DEPT_ID 
group BY dept_name

SELECT dept_name, count(*), avg(2026-year_emp), ax(2026-year_emp)
FROM professor p, department d
WHERE p.dept_id=d.dept_id AND avg(2026-year_emp)>=10
GROUP BY dept_name  -- 그룹 함수는 허가되지 않습니다

SELECT dept_name 학과명, count(*) 수, avg(2026-year_emp) 평균, max(2026-year_emp) 최대
FROM professor p, department d
WHERE p.dept_id=d.dept_id
GROUP BY dept_name
HAVING  avg(2026-year_emp)>=10

SELECT dname, count(*), avg(sal), max(sal), min(sal)
FROM emp e, dept d
WHERE e.deptno=d.DEPTNO 
GROUP BY DNAME 
HAVING count(*)>=5


SELECT * FROM emp WHERE comm IS null;

SELECT * FROM emp WHERE comm <> 500;

SELECT title
FROM course
WHERE course_id in(
	SELECT DISTINCT course_id
	FROM class
	WHERE classroom='301호')


SELECT DISTINCT title
FROM course c1,class c2
WHERE c1.course_id=c2.course_id 
AND classroom='301호'


SELECT title
FROM course
WHERE course_id NOT IN
	(SELECT DISTINCT  COURSE_ID
	FROM class
	WHERE YEAR = 2012 AND semester=2)
	

SELECT * FROM course;

SELECT * FROM class;

SELECT * FROM TAKES;


CREATE OR REPLACE VIEW v_takes AS
	SELECT stu_id, class_id
	FROM takes
	WITH READ only;

SELECT * FROM v_takes;

CREATE OR replace VIEW cs_student AS
	SELECT s.stu_id, s.resident_id, s.name, s.YEAR, s.address, s.dept_id
	FROM student s, department d
	WHERE s.dept_id=d.dept_id
	AND d.dept_name='컴퓨터공학과'


SELECT * 
FROM cs_student;

INSERT INTO V_TAKES 
VALUES ('1292502','C101-01')






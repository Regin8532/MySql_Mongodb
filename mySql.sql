create database guvi_task;
use guvi_task;
create table Table_Empl (
		empno int primary key auto_increment,
		ename varchar(255),
        job varchar(255),
        mgr int,
        hiredate date,
        sal float,
        comm float,
        deptno int);
ALTER TABLE Table_Empl 
MODIFY empno INT;
ALTER TABLE Table_Empl
DROP PRIMARY KEY;
ALTER TABLE Table_Empl
MODIFY empno INT,
MODIFY ename VARCHAR(50),
MODIFY job VARCHAR(50),
MODIFY mgr INT,
MODIFY hiredate DATE,
MODIFY sal DECIMAL(10,2),
MODIFY comm DECIMAL(10,2),
MODIFY deptno INT;
ALTER TABLE Table_Empl
ADD PRIMARY KEY (empno);
INSERT INTO Table_Empl (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
(8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);
SHOW tables;
SELECT * FROM table_empl;
A. Write a query to display EName and Sal of employees whose salary are greater than or equal to 2200?
SELECT ename,sal FROM table_empl WHERE sal>=2200;

B. Write a query to display details of employees who are not getting commission?
SELECT * FROM table_empl WHERE comm IS NULL OR comm = 0.00;


C. Write a query to display employee name and salary of those employees who dont have their salary in the range of 2500 to 4000?
SELECT ename, sal FROM table_empl WHERE sal NOT BETWEEN 2500 AND 4000;

D. Write a query to display the name, job title and salary of employees who dont have a manager?
SELECT ename,job,sal FROM table_empl where mgr is NULL;
	
E. Write a query to display the name of an employee whose name contains "A" ás third alphabet?
SELECT ename FROM Table_Empl WHERE ename LIKE '__A%';

F. Write a query to display the name of an employee whose name contains "T" as the last alphabet?
SELECT ename FROM Table_Empl WHERE ename LIKE '%T';

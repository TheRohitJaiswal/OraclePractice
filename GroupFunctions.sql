SQL> select hiredate, count(*) from emp group by hiredate having hiredate like '%80' and hiredate like '%81' and hiredate like '%82';

no rows selected

SQL> select hiredate, count(*) from emp group by hiredate having hiredate like '%80' or hiredate like '%81' or hiredate like '%82';

HIREDATE    COUNT(*)                                                            
--------- ----------                                                            
17-NOV-81          1                                                            
03-DEC-81          2                                                            
23-JAN-82          1                                                            
22-FEB-81          1                                                            
09-JUN-81          1                                                            
17-DEC-80          1                                                            
09-DEC-82          1                                                            
02-APR-81          1                                                            
20-FEB-81          1                                                            
01-MAY-81          1                                                            
08-SEP-81          1                                                            

HIREDATE    COUNT(*)                                                            
--------- ----------                                                            
28-SEP-81          1                                                            

12 rows selected.

SQL> select emp.job, sal, deptno,totalsal from emp,(select job,sum(sal) totalsal from emp group by job)a where deptno in (10,20,30) and emp.job=a.job;

JOB              SAL     DEPTNO   TOTALSAL                                      
--------- ---------- ---------- ----------                                      
PRESIDENT       5000         10       5000                                      
MANAGER         2850         30       8275                                      
MANAGER         2450         10       8275                                      
MANAGER         2975         20       8275                                      
SALESMAN        1250         30       5600                                      
SALESMAN        1600         30       5600                                      
SALESMAN        1500         30       5600                                      
CLERK            950         30       4150                                      
SALESMAN        1250         30       5600                                      
ANALYST         3000         20       6000                                      
CLERK            800         20       4150                                      

JOB              SAL     DEPTNO   TOTALSAL                                      
--------- ---------- ---------- ----------                                      
ANALYST         3000         20       6000                                      
CLERK           1100         20       4150                                      
CLERK           1300         10       4150                                      

14 rows selected.

SQL> select deptno,null job,sum(sal) from emp group by deptno union select null,job, sum(sal) from emp group by job union select null,nvl(null,'Total Salary - '),sum(sal) from emp;

    DEPTNO JOB               SUM(SAL)                                           
---------- --------------- ----------                                           
        10                       8750                                           
        20                      10875                                           
        30                       9400                                           
           ANALYST               6000                                           
           CLERK                 4150                                           
           MANAGER               8275                                           
           PRESIDENT             5000                                           
           SALESMAN              5600                                           
           Total Salary -       29025                                           

9 rows selected.

SQL> select job, deptno from emp where deptno = 20;

JOB           DEPTNO                                                            
--------- ----------                                                            
MANAGER           20                                                            
ANALYST           20                                                            
CLERK             20                                                            
ANALYST           20                                                            
CLERK             20                                                            

SQL> select job, deptno from emp where deptno = 20 union select job, deptno from emp where deptno = 10 union select job,deptno from emp where deptno = 30;

JOB           DEPTNO                                                            
--------- ----------                                                            
ANALYST           20                                                            
CLERK             10                                                            
CLERK             20                                                            
CLERK             30                                                            
MANAGER           10                                                            
MANAGER           20                                                            
MANAGER           30                                                            
PRESIDENT         10                                                            
SALESMAN          30                                                            

9 rows selected.

SQL> select distinct job, deptno from emp where deptno = 20 union select job, deptno from emp where deptno = 10 union select job,deptno from emp where deptno = 30;

JOB           DEPTNO                                                            
--------- ----------                                                            
ANALYST           20                                                            
CLERK             10                                                            
CLERK             20                                                            
CLERK             30                                                            
MANAGER           10                                                            
MANAGER           20                                                            
MANAGER           30                                                            
PRESIDENT         10                                                            
SALESMAN          30                                                            

9 rows selected.

SQL> select distinct job, deptno from emp where deptno = 20 order by deptno union select job, deptno from emp where deptno = 10 union select job,deptno from emp where deptno = 30;
select distinct job, deptno from emp where deptno = 20 order by deptno union select job, deptno from emp where deptno = 10 union select job,deptno from emp where deptno = 30
                                                                       *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select deptno,job from emp where deptno = 20 union select deptno,job from emp where deptno = 10 union select deptno,job from emp where deptno = 30;

    DEPTNO JOB                                                                  
---------- ---------                                                            
        10 CLERK                                                                
        10 MANAGER                                                              
        10 PRESIDENT                                                            
        20 ANALYST                                                              
        20 CLERK                                                                
        20 MANAGER                                                              
        30 CLERK                                                                
        30 MANAGER                                                              
        30 SALESMAN                                                             

9 rows selected.

SQL> select deptno,job from emp where deptno = 20 union all select deptno,job from emp where deptno = 10 union select deptno,job from emp where deptno = 30;

    DEPTNO JOB                                                                  
---------- ---------                                                            
        10 CLERK                                                                
        10 MANAGER                                                              
        10 PRESIDENT                                                            
        20 ANALYST                                                              
        20 CLERK                                                                
        20 MANAGER                                                              
        30 CLERK                                                                
        30 MANAGER                                                              
        30 SALESMAN                                                             

9 rows selected.

SQL> select deptno,job from emp where deptno = 20 union all select deptno,job from emp where deptno = 10 union select c.deptno,c.job from emp c where c.deptno = 30;

    DEPTNO JOB                                                                  
---------- ---------                                                            
        10 CLERK                                                                
        10 MANAGER                                                              
        10 PRESIDENT                                                            
        20 ANALYST                                                              
        20 CLERK                                                                
        20 MANAGER                                                              
        30 CLERK                                                                
        30 MANAGER                                                              
        30 SALESMAN                                                             

9 rows selected.

SQL> select deptno,job from emp where deptno = 20 union all select b.deptno,b.job from emp b where b.deptno = 10 union select c.deptno,c.job from emp c where c.deptno = 30;

    DEPTNO JOB                                                                  
---------- ---------                                                            
        10 CLERK                                                                
        10 MANAGER                                                              
        10 PRESIDENT                                                            
        20 ANALYST                                                              
        20 CLERK                                                                
        20 MANAGER                                                              
        30 CLERK                                                                
        30 MANAGER                                                              
        30 SALESMAN                                                             

9 rows selected.

SQL> select job, deptno from
  2  (select job, deptno, 2 as o from emp where deptno = 10
  3  union
  4  select job,deptno, 1 from emp where deptno = 20
  5  union
  6  select job, deptno, 3 from emp where deptno = 30
  7  )
  8  order by o;

JOB           DEPTNO                                                            
--------- ----------                                                            
MANAGER           20                                                            
ANALYST           20                                                            
CLERK             20                                                            
CLERK             10                                                            
MANAGER           10                                                            
PRESIDENT         10                                                            
MANAGER           30                                                            
CLERK             30                                                            
SALESMAN          30                                                            

9 rows selected.

SQL> spool off

SQL> conn scott/tiger
Connected.
SQL> select empno, ename, deptno from employees where deptno = (select deptno from employees where lower(ename)=&&name) and ename <> &name;
Enter value for name: scott
old   1: select empno, ename, deptno from employees where deptno = (select deptno from employees where lower(ename)=&&name) and ename <> &name
new   1: select empno, ename, deptno from employees where deptno = (select deptno from employees where lower(ename)=scott) and ename <> scott
select empno, ename, deptno from employees where deptno = (select deptno from employees where lower(ename)=scott) and ename <> scott
                                 *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)=&&name) and ename <> &name;
old   1: select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)=&&name) and ename <> &name
new   1: select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)=scott) and ename <> scott
select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)=scott) and ename <> scott
                                                                                                                   *
ERROR at line 1:
ORA-00904: "SCOTT": invalid identifier 


SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

SQL> select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)='&&name') and ename <> '&name';
old   1: select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)='&&name') and ename <> '&name'
new   1: select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)='scott') and ename <> 'scott'

     EMPNO ENAME          DEPTNO                                                
---------- ---------- ----------                                                
      7566 JONES              20                                                
      7902 FORD               20                                                
      7369 SMITH              20                                                
      7788 SCOTT              20                                                
      7876 ADAMS              20                                                

SQL> select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)='&&name') and lower(ename) <> '&name';
old   1: select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)='&&name') and lower(ename) <> '&name'
new   1: select empno, ename, deptno from emp where deptno = (select deptno from emp where lower(ename)='scott') and lower(ename) <> 'scott'

     EMPNO ENAME          DEPTNO                                                
---------- ---------- ----------                                                
      7566 JONES              20                                                
      7902 FORD               20                                                
      7369 SMITH              20                                                
      7876 ADAMS              20                                                

SQL> select ename, sal from emp where sal>(select avg(sal) from emp);

ENAME             SAL                                                           
---------- ----------                                                           
KING             5000                                                           
BLAKE            2850                                                           
CLARK            2450                                                           
JONES            2975                                                           
FORD             3000                                                           
SCOTT            3000                                                           

6 rows selected.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
CUSTOMER                       TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
ITEM                           TABLE                                            
ORD                            TABLE                                            
PRICE                          TABLE                                            
PRODUCT                        TABLE                                            
SALGRADE                       TABLE                                            
TEST                           TABLE                                            

11 rows selected.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

SQL> select ename, mgr from emp e where not exists(select * from emp where e.empno = mgr);

ENAME             MGR                                                           
---------- ----------                                                           
TURNER           7698                                                           
WARD             7698                                                           
MARTIN           7698                                                           
ALLEN            7698                                                           
MILLER           7782                                                           
SMITH            7902                                                           
ADAMS            7788                                                           
JAMES            7698                                                           

8 rows selected.

SQL> select ename, sal from emp where sal < all(select max(sal) from emp where deptno = 10);

ENAME             SAL                                                           
---------- ----------                                                           
BLAKE            2850                                                           
CLARK            2450                                                           
JONES            2975                                                           
MARTIN           1250                                                           
ALLEN            1600                                                           
TURNER           1500                                                           
JAMES             950                                                           
WARD             1250                                                           
FORD             3000                                                           
SMITH             800                                                           
SCOTT            3000                                                           

ENAME             SAL                                                           
---------- ----------                                                           
ADAMS            1100                                                           
MILLER           1300                                                           

13 rows selected.

SQL> select empno, ename from emp where deptno = any(select deptno from emp where ename like '%R%');

     EMPNO ENAME                                                                
---------- ----------                                                           
      7934 MILLER                                                               
      7782 CLARK                                                                
      7839 KING                                                                 
      7521 WARD                                                                 
      7900 JAMES                                                                
      7844 TURNER                                                               
      7499 ALLEN                                                                
      7654 MARTIN                                                               
      7698 BLAKE                                                                
      7876 ADAMS                                                                
      7788 SCOTT                                                                

     EMPNO ENAME                                                                
---------- ----------                                                           
      7369 SMITH                                                                
      7902 FORD                                                                 
      7566 JONES                                                                

14 rows selected.

SQL> select * from job;
select * from job
              *
ERROR at line 1:
ORA-04044: procedure, function, package, or type is not allowed here 


SQL> select * from dept;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> select ename, deptno, job from emp where deptno = (select deptno from dept where loc = 'NEW YORK');

ENAME          DEPTNO JOB                                                       
---------- ---------- ---------                                                 
KING               10 PRESIDENT                                                 
CLARK              10 MANAGER                                                   
MILLER             10 CLERK                                                     

SQL> select ename, deptno, job from emp where deptno = (select deptno from dept where loc = '&location');
Enter value for location: DALLAS
old   1: select ename, deptno, job from emp where deptno = (select deptno from dept where loc = '&location')
new   1: select ename, deptno, job from emp where deptno = (select deptno from dept where loc = 'DALLAS')

ENAME          DEPTNO JOB                                                       
---------- ---------- ---------                                                 
JONES              20 MANAGER                                                   
FORD               20 ANALYST                                                   
SMITH              20 CLERK                                                     
SCOTT              20 ANALYST                                                   
ADAMS              20 CLERK                                                     

SQL> select ename, sal from emp where mgr = (select empno from emp where ename = 'KING');

ENAME             SAL                                                           
---------- ----------                                                           
BLAKE            2850                                                           
CLARK            2450                                                           
JONES            2975                                                           

SQL> select ename, sal from emp e where sal < (select avg(sal) from emp where dept = e.dept);
select ename, sal from emp e where sal < (select avg(sal) from emp where dept = e.dept)
                                                                                *
ERROR at line 1:
ORA-00904: "E"."DEPT": invalid identifier 


SQL> select ename, sal from emp e where sal < (select avg(sal) from emp where deptno = e.deptno);

ENAME             SAL                                                           
---------- ----------                                                           
CLARK            2450                                                           
MARTIN           1250                                                           
TURNER           1500                                                           
JAMES             950                                                           
WARD             1250                                                           
SMITH             800                                                           
ADAMS            1100                                                           
MILLER           1300                                                           

8 rows selected.

SQL> select loc, (select avg(sal) from emp where deptno = d.deptno) from dept d;

LOC           (SELECTAVG(SAL)FROMEMPWHEREDEPTNO=D.DEPTNO)                       
------------- -------------------------------------------                       
NEW YORK                                       2916.66667                       
DALLAS                                               2175                       
CHICAGO                                        1566.66667                       
BOSTON                                                                          

SQL> select sal from (select * from emp order by sal) where rownum<=&n;
Enter value for n: 4
old   1: select sal from (select * from emp order by sal) where rownum<=&n
new   1: select sal from (select * from emp order by sal) where rownum<=4

       SAL                                                                      
----------                                                                      
       800                                                                      
       950                                                                      
      1100                                                                      
      1250                                                                      

SQL> spool off

SQL> select empno, ename, sal, deptno, dname, loc from emp natural join dept;

     EMPNO ENAME             SAL     DEPTNO DNAME          LOC                  
---------- ---------- ---------- ---------- -------------- -------------        
      7839 KING             5000         10 ACCOUNTING     NEW YORK             
      7698 BLAKE            2850         30 SALES          CHICAGO              
      7782 CLARK            2450         10 ACCOUNTING     NEW YORK             
      7566 JONES            2975         20 RESEARCH       DALLAS               
      7654 MARTIN           1250         30 SALES          CHICAGO              
      7499 ALLEN            1600         30 SALES          CHICAGO              
      7844 TURNER           1500         30 SALES          CHICAGO              
      7900 JAMES             950         30 SALES          CHICAGO              
      7521 WARD             1250         30 SALES          CHICAGO              
      7902 FORD             3000         20 RESEARCH       DALLAS               
      7369 SMITH             800         20 RESEARCH       DALLAS               

     EMPNO ENAME             SAL     DEPTNO DNAME          LOC                  
---------- ---------- ---------- ---------- -------------- -------------        
      7788 SCOTT            3000         20 RESEARCH       DALLAS               
      7876 ADAMS            1100         20 RESEARCH       DALLAS               
      7934 MILLER           1300         10 ACCOUNTING     NEW YORK             

14 rows selected.

SQL> select job, mgr, sal, comm,dname from emp natural join dept where lower(job) = 'salesman';

JOB              MGR        SAL       COMM DNAME                                
--------- ---------- ---------- ---------- --------------                       
SALESMAN        7698       1250       1400 SALES                                
SALESMAN        7698       1600        300 SALES                                
SALESMAN        7698       1500          0 SALES                                
SALESMAN        7698       1250        500 SALES                                

SQL> select ename, job, deptno, dname from emp natural join dept where lower(loc) = 'dallas';

ENAME      JOB           DEPTNO DNAME                                           
---------- --------- ---------- --------------                                  
JONES      MANAGER           20 RESEARCH                                        
FORD       ANALYST           20 RESEARCH                                        
SMITH      CLERK             20 RESEARCH                                        
SCOTT      ANALYST           20 RESEARCH                                        
ADAMS      CLERK             20 RESEARCH                                        

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

SQL> select a.ename "Employee", a.empno "Emp#", b.ename "Manager",b.empno "Mgr#" from emp a join emp b on(a.mgr = b.empno);

Employee         Emp# Manager          Mgr#                                     
---------- ---------- ---------- ----------                                     
JONES            7566 KING             7839                                     
CLARK            7782 KING             7839                                     
BLAKE            7698 KING             7839                                     
WARD             7521 BLAKE            7698                                     
JAMES            7900 BLAKE            7698                                     
TURNER           7844 BLAKE            7698                                     
ALLEN            7499 BLAKE            7698                                     
MARTIN           7654 BLAKE            7698                                     
MILLER           7934 CLARK            7782                                     
SCOTT            7788 JONES            7566                                     
FORD             7902 JONES            7566                                     

Employee         Emp# Manager          Mgr#                                     
---------- ---------- ---------- ----------                                     
SMITH            7369 FORD             7902                                     
ADAMS            7876 SCOTT            7788                                     

13 rows selected.

SQL> select a.ename "Employee", a.empno "Emp#", b.ename "Manager",b.empno "Mgr#" from emp a left join emp b on(a.mgr = b.empno);

Employee         Emp# Manager          Mgr#                                     
---------- ---------- ---------- ----------                                     
JONES            7566 KING             7839                                     
CLARK            7782 KING             7839                                     
BLAKE            7698 KING             7839                                     
WARD             7521 BLAKE            7698                                     
JAMES            7900 BLAKE            7698                                     
TURNER           7844 BLAKE            7698                                     
ALLEN            7499 BLAKE            7698                                     
MARTIN           7654 BLAKE            7698                                     
MILLER           7934 CLARK            7782                                     
SCOTT            7788 JONES            7566                                     
FORD             7902 JONES            7566                                     

Employee         Emp# Manager          Mgr#                                     
---------- ---------- ---------- ----------                                     
SMITH            7369 FORD             7902                                     
ADAMS            7876 SCOTT            7788                                     
KING             7839                                                           

14 rows selected.

SQL> select a.ename "Employee", a.empno "Emp#", b.ename "Manager",b.empno "Mgr#" from emp a left join emp b on(a.mgr = b.empno) order by a.empno;

Employee         Emp# Manager          Mgr#                                     
---------- ---------- ---------- ----------                                     
SMITH            7369 FORD             7902                                     
ALLEN            7499 BLAKE            7698                                     
WARD             7521 BLAKE            7698                                     
JONES            7566 KING             7839                                     
MARTIN           7654 BLAKE            7698                                     
BLAKE            7698 KING             7839                                     
CLARK            7782 KING             7839                                     
SCOTT            7788 JONES            7566                                     
KING             7839                                                           
TURNER           7844 BLAKE            7698                                     
ADAMS            7876 SCOTT            7788                                     

Employee         Emp# Manager          Mgr#                                     
---------- ---------- ---------- ----------                                     
JAMES            7900 BLAKE            7698                                     
FORD             7902 JONES            7566                                     
MILLER           7934 CLARK            7782                                     

14 rows selected.

SQL> describe salgrade;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GRADE                                              NUMBER
 LOSAL                                              NUMBER
 HISAL                                              NUMBER

SQL> select ename, job, dname,sal,grade from emp,salgrade natural join dept where sal between losal and hisal;

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
SMITH      CLERK     OPERATIONS            800          1                       
JAMES      CLERK     OPERATIONS            950          1                       
ADAMS      CLERK     OPERATIONS           1100          1                       
SMITH      CLERK     RESEARCH              800          1                       
JAMES      CLERK     RESEARCH              950          1                       
ADAMS      CLERK     RESEARCH             1100          1                       
SMITH      CLERK     SALES                 800          1                       
JAMES      CLERK     SALES                 950          1                       
ADAMS      CLERK     SALES                1100          1                       
SMITH      CLERK     ACCOUNTING            800          1                       
JAMES      CLERK     ACCOUNTING            950          1                       

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
ADAMS      CLERK     ACCOUNTING           1100          1                       
WARD       SALESMAN  SALES                1250          2                       
MARTIN     SALESMAN  SALES                1250          2                       
MILLER     CLERK     SALES                1300          2                       
WARD       SALESMAN  RESEARCH             1250          2                       
MARTIN     SALESMAN  RESEARCH             1250          2                       
MILLER     CLERK     RESEARCH             1300          2                       
WARD       SALESMAN  ACCOUNTING           1250          2                       
MARTIN     SALESMAN  ACCOUNTING           1250          2                       
MILLER     CLERK     ACCOUNTING           1300          2                       
WARD       SALESMAN  OPERATIONS           1250          2                       

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
MARTIN     SALESMAN  OPERATIONS           1250          2                       
MILLER     CLERK     OPERATIONS           1300          2                       
TURNER     SALESMAN  OPERATIONS           1500          3                       
ALLEN      SALESMAN  OPERATIONS           1600          3                       
TURNER     SALESMAN  RESEARCH             1500          3                       
ALLEN      SALESMAN  RESEARCH             1600          3                       
TURNER     SALESMAN  SALES                1500          3                       
ALLEN      SALESMAN  SALES                1600          3                       
TURNER     SALESMAN  ACCOUNTING           1500          3                       
ALLEN      SALESMAN  ACCOUNTING           1600          3                       
CLARK      MANAGER   SALES                2450          4                       

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
BLAKE      MANAGER   SALES                2850          4                       
JONES      MANAGER   SALES                2975          4                       
FORD       ANALYST   SALES                3000          4                       
SCOTT      ANALYST   SALES                3000          4                       
CLARK      MANAGER   RESEARCH             2450          4                       
BLAKE      MANAGER   RESEARCH             2850          4                       
JONES      MANAGER   RESEARCH             2975          4                       
FORD       ANALYST   RESEARCH             3000          4                       
SCOTT      ANALYST   RESEARCH             3000          4                       
CLARK      MANAGER   ACCOUNTING           2450          4                       
BLAKE      MANAGER   ACCOUNTING           2850          4                       

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
JONES      MANAGER   ACCOUNTING           2975          4                       
FORD       ANALYST   ACCOUNTING           3000          4                       
SCOTT      ANALYST   ACCOUNTING           3000          4                       
CLARK      MANAGER   OPERATIONS           2450          4                       
BLAKE      MANAGER   OPERATIONS           2850          4                       
JONES      MANAGER   OPERATIONS           2975          4                       
FORD       ANALYST   OPERATIONS           3000          4                       
SCOTT      ANALYST   OPERATIONS           3000          4                       
KING       PRESIDENT RESEARCH             5000          5                       
KING       PRESIDENT ACCOUNTING           5000          5                       
KING       PRESIDENT OPERATIONS           5000          5                       

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
KING       PRESIDENT SALES                5000          5                       

56 rows selected.

SQL> select ename, job, dname,sal,grade from dept natural join emp join salgrade on(sal between losal and hisal) ;

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
KING       PRESIDENT ACCOUNTING           5000          5                       
BLAKE      MANAGER   SALES                2850          4                       
CLARK      MANAGER   ACCOUNTING           2450          4                       
JONES      MANAGER   RESEARCH             2975          4                       
MARTIN     SALESMAN  SALES                1250          2                       
ALLEN      SALESMAN  SALES                1600          3                       
TURNER     SALESMAN  SALES                1500          3                       
JAMES      CLERK     SALES                 950          1                       
WARD       SALESMAN  SALES                1250          2                       
FORD       ANALYST   RESEARCH             3000          4                       
SMITH      CLERK     RESEARCH              800          1                       

ENAME      JOB       DNAME                 SAL      GRADE                       
---------- --------- -------------- ---------- ----------                       
SCOTT      ANALYST   RESEARCH             3000          4                       
ADAMS      CLERK     RESEARCH             1100          1                       
MILLER     CLERK     ACCOUNTING           1300          2                       

14 rows selected.

SQL> select ename, dname from emp right natural join dept;

ENAME      DNAME                                                                
---------- --------------                                                       
KING       ACCOUNTING                                                           
BLAKE      SALES                                                                
CLARK      ACCOUNTING                                                           
JONES      RESEARCH                                                             
MARTIN     SALES                                                                
ALLEN      SALES                                                                
TURNER     SALES                                                                
JAMES      SALES                                                                
WARD       SALES                                                                
FORD       RESEARCH                                                             
SMITH      RESEARCH                                                             

ENAME      DNAME                                                                
---------- --------------                                                       
SCOTT      RESEARCH                                                             
ADAMS      RESEARCH                                                             
MILLER     ACCOUNTING                                                           

14 rows selected.

SQL> select empno,ename,dname, loc from emp join dept using(deptno) where lower(job) = 'salesman';

     EMPNO ENAME      DNAME          LOC                                        
---------- ---------- -------------- -------------                              
      7654 MARTIN     SALES          CHICAGO                                    
      7499 ALLEN      SALES          CHICAGO                                    
      7844 TURNER     SALES          CHICAGO                                    
      7521 WARD       SALES          CHICAGO                                    

SQL> select ename, sal, mgr, dname from emp join dept on(emp.deptno = dept.deptno) where sal > 2000;

ENAME             SAL        MGR DNAME                                          
---------- ---------- ---------- --------------                                 
KING             5000            ACCOUNTING                                     
BLAKE            2850       7839 SALES                                          
CLARK            2450       7839 ACCOUNTING                                     
JONES            2975       7839 RESEARCH                                       
FORD             3000       7566 RESEARCH                                       
SCOTT            3000       7566 RESEARCH                                       

6 rows selected.

SQL> select empno, dname, loc from emp full outer natural join dept;
select empno, dname, loc from emp full outer natural join dept
                                             *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> select empno, dname, loc from emp full natural join dept;

     EMPNO DNAME          LOC                                                   
---------- -------------- -------------                                         
      7839 ACCOUNTING     NEW YORK                                              
      7698 SALES          CHICAGO                                               
      7782 ACCOUNTING     NEW YORK                                              
      7566 RESEARCH       DALLAS                                                
      7654 SALES          CHICAGO                                               
      7499 SALES          CHICAGO                                               
      7844 SALES          CHICAGO                                               
      7900 SALES          CHICAGO                                               
      7521 SALES          CHICAGO                                               
      7902 RESEARCH       DALLAS                                                
      7369 RESEARCH       DALLAS                                                

     EMPNO DNAME          LOC                                                   
---------- -------------- -------------                                         
      7788 RESEARCH       DALLAS                                                
      7876 RESEARCH       DALLAS                                                
      7934 ACCOUNTING     NEW YORK                                              

14 rows selected.

SQL> conn hr/hr;
Connected.
SQL> select empno, dname, loc from employees full natural join departments;
select empno, dname, loc from employees full natural join departments
                     *
ERROR at line 1:
ORA-00904: "LOC": invalid identifier 


SQL> select empno, dname, location from employees full natural join departments;
select empno, dname, location from employees full natural join departments
                     *
ERROR at line 1:
ORA-00904: "LOCATION": invalid identifier 


SQL> select empno, dname from employees full natural join departments;
select empno, dname from employees full natural join departments
              *
ERROR at line 1:
ORA-00904: "DNAME": invalid identifier 


SQL> select empno, dept_name from employees full natural join departments;
select empno, dept_name from employees full natural join departments
              *
ERROR at line 1:
ORA-00904: "DEPT_NAME": invalid identifier 


SQL> spool off;

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
SQL> select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno) from emp e where sal<avg(sal);
select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno) from emp e where sal<avg(sal)
                                                                                                              *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno) avgsal from emp e where sal<avgsal;
select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno) avgsal from emp e where sal<avgsal
                                                                                                                     *
ERROR at line 1:
ORA-00904: "AVGSAL": invalid identifier 


SQL> select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno) avgsal from emp e;

     EMPNO ENAME          AVGSAL                                                
---------- ---------- ----------                                                
      7839 KING       2916.66667                                                
      7698 BLAKE      1566.66667                                                
      7782 CLARK      2916.66667                                                
      7566 JONES            2175                                                
      7654 MARTIN     1566.66667                                                
      7499 ALLEN      1566.66667                                                
      7844 TURNER     1566.66667                                                
      7900 JAMES      1566.66667                                                
      7521 WARD       1566.66667                                                
      7902 FORD             2175                                                
      7369 SMITH            2175                                                

     EMPNO ENAME          AVGSAL                                                
---------- ---------- ----------                                                
      7788 SCOTT            2175                                                
      7876 ADAMS            2175                                                
      7934 MILLER     2916.66667                                                

14 rows selected.

SQL> select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno)a avgsal from emp e;
select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno)a avgsal from emp e
                                                                                          *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno)a from emp e;

     EMPNO ENAME               A                                                
---------- ---------- ----------                                                
      7839 KING       2916.66667                                                
      7698 BLAKE      1566.66667                                                
      7782 CLARK      2916.66667                                                
      7566 JONES            2175                                                
      7654 MARTIN     1566.66667                                                
      7499 ALLEN      1566.66667                                                
      7844 TURNER     1566.66667                                                
      7900 JAMES      1566.66667                                                
      7521 WARD       1566.66667                                                
      7902 FORD             2175                                                
      7369 SMITH            2175                                                

     EMPNO ENAME               A                                                
---------- ---------- ----------                                                
      7788 SCOTT            2175                                                
      7876 ADAMS            2175                                                
      7934 MILLER     2916.66667                                                

14 rows selected.

SQL> select empno, ename, (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e where e.sal<a.avgsal;
select empno, ename, (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e where e.sal<a.avgsal
                                                                                                                        *
ERROR at line 1:
ORA-00904: "A"."AVGSAL": invalid identifier 


SQL> select empno, ename, (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e where e.sal<a.avg(sal);
select empno, ename, (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e where e.sal<a.avg(sal)
                                                                                                                        *
ERROR at line 1:
ORA-00904: "A"."AVG": invalid identifier 


SQL> select (select empno,ename from e where e.sal<a.avgsal), (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e;
select (select empno,ename from e where e.sal<a.avgsal), (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e
                                *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select (select empno,ename from emp e where e.sal<a.avgsal), (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp;
select (select empno,ename from emp e where e.sal<a.avgsal), (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp
        *
ERROR at line 1:
ORA-00913: too many values 


SQL> select (select empno,ename from emp where e.sal<a.avgsal), (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e;
select (select empno,ename from emp where e.sal<a.avgsal), (select avg(sal) avgsal from emp group by deptno having deptno = e.deptno)a from emp e
        *
ERROR at line 1:
ORA-00913: too many values 


SQL> select empno, ename, (select avg(sal) from emp group by deptno having deptno = e.deptno)a from emp e where sal<(select avg(sal) from emp group by deptno having deptno = e.deptno);

     EMPNO ENAME               A                                                
---------- ---------- ----------                                                
      7782 CLARK      2916.66667                                                
      7654 MARTIN     1566.66667                                                
      7844 TURNER     1566.66667                                                
      7900 JAMES      1566.66667                                                
      7521 WARD       1566.66667                                                
      7369 SMITH            2175                                                
      7876 ADAMS            2175                                                
      7934 MILLER     2916.66667                                                

8 rows selected.

SQL> select empno, ename, sal, (select avg(sal) from emp group by deptno having deptno = e.deptno)avgsal from emp e where sal<(select avg(sal) from emp group by deptno having deptno = e.deptno);

     EMPNO ENAME             SAL     AVGSAL                                     
---------- ---------- ---------- ----------                                     
      7782 CLARK            2450 2916.66667                                     
      7654 MARTIN           1250 1566.66667                                     
      7844 TURNER           1500 1566.66667                                     
      7900 JAMES             950 1566.66667                                     
      7521 WARD             1250 1566.66667                                     
      7369 SMITH             800       2175                                     
      7876 ADAMS            1100       2175                                     
      7934 MILLER           1300 2916.66667                                     

8 rows selected.

SQL> select empno, ename, decode(lower(d.dname),'accounting',sal*0.1+sal,sal) from emp, dept d where d.deptno = deptno;
select empno, ename, decode(lower(d.dname),'accounting',sal*0.1+sal,sal) from emp, dept d where d.deptno = deptno
                                                                                                           *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> select empno, ename, decode(lower(d.dname),'accounting',sal*0.1+sal,sal) from emp e, dept d where d.deptno = e.deptno;

     EMPNO ENAME      DECODE(LOWER(D.DNAME),'ACCOUNTING',SAL*0.1+SAL,SAL)       
---------- ---------- ---------------------------------------------------       
      7839 KING                                                      5500       
      7698 BLAKE                                                     2850       
      7782 CLARK                                                     2695       
      7566 JONES                                                     2975       
      7654 MARTIN                                                    1250       
      7499 ALLEN                                                     1600       
      7844 TURNER                                                    1500       
      7900 JAMES                                                      950       
      7521 WARD                                                      1250       
      7902 FORD                                                      3000       
      7369 SMITH                                                      800       

     EMPNO ENAME      DECODE(LOWER(D.DNAME),'ACCOUNTING',SAL*0.1+SAL,SAL)       
---------- ---------- ---------------------------------------------------       
      7788 SCOTT                                                     3000       
      7876 ADAMS                                                     1100       
      7934 MILLER                                                    1430       

14 rows selected.

SQL> select empno, ename, dname, decode(lower(d.dname),'accounting',sal*0.1+sal,sal) newsal from emp e, dept d where d.deptno = e.deptno;

     EMPNO ENAME      DNAME              NEWSAL                                 
---------- ---------- -------------- ----------                                 
      7839 KING       ACCOUNTING           5500                                 
      7698 BLAKE      SALES                2850                                 
      7782 CLARK      ACCOUNTING           2695                                 
      7566 JONES      RESEARCH             2975                                 
      7654 MARTIN     SALES                1250                                 
      7499 ALLEN      SALES                1600                                 
      7844 TURNER     SALES                1500                                 
      7900 JAMES      SALES                 950                                 
      7521 WARD       SALES                1250                                 
      7902 FORD       RESEARCH             3000                                 
      7369 SMITH      RESEARCH              800                                 

     EMPNO ENAME      DNAME              NEWSAL                                 
---------- ---------- -------------- ----------                                 
      7788 SCOTT      RESEARCH             3000                                 
      7876 ADAMS      RESEARCH             1100                                 
      7934 MILLER     ACCOUNTING           1430                                 

14 rows selected.

SQL> select empno, ename, dname,sal, decode(lower(d.dname),'accounting',sal*0.1+sal,sal) newsal from emp e, dept d where d.deptno = e.deptno;

     EMPNO ENAME      DNAME                 SAL     NEWSAL                      
---------- ---------- -------------- ---------- ----------                      
      7839 KING       ACCOUNTING           5000       5500                      
      7698 BLAKE      SALES                2850       2850                      
      7782 CLARK      ACCOUNTING           2450       2695                      
      7566 JONES      RESEARCH             2975       2975                      
      7654 MARTIN     SALES                1250       1250                      
      7499 ALLEN      SALES                1600       1600                      
      7844 TURNER     SALES                1500       1500                      
      7900 JAMES      SALES                 950        950                      
      7521 WARD       SALES                1250       1250                      
      7902 FORD       RESEARCH             3000       3000                      
      7369 SMITH      RESEARCH              800        800                      

     EMPNO ENAME      DNAME                 SAL     NEWSAL                      
---------- ---------- -------------- ---------- ----------                      
      7788 SCOTT      RESEARCH             3000       3000                      
      7876 ADAMS      RESEARCH             1100       1100                      
      7934 MILLER     ACCOUNTING           1300       1430                      

14 rows selected.

SQL> delete from emp where sal<(select avg(sal) from emp);

8 rows deleted.

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
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

6 rows selected.

SQL> flashback table emp to before delete;
flashback table emp to before delete
*
ERROR at line 1:
ORA-00439: feature not enabled: Flashback Table 


SQL> conn sys/oracle123 as sysdba;
Connected.
SQL> grant flashback privilege to scott idetified by tiger;
grant flashback privilege to scott idetified by tiger
      *
ERROR at line 1:
ORA-00990: missing or invalid privilege 


SQL> grant all privileges to scott idetified by tiger;
grant all privileges to scott idetified by tiger
                              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> grant all privileges to scott identified by tiger;

Grant succeeded.

SQL> conn scott/tiger
Connected.
SQL> flashback table emp to before delete;
flashback table emp to before delete
*
ERROR at line 1:
ORA-00439: feature not enabled: Flashback Table 


SQL> rollback;

Rollback complete.

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
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

6 rows selected.

SQL> rollback;

Rollback complete.

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
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

6 rows selected.

SQL> rollback;

Rollback complete.

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
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

6 rows selected.

SQL> delete from emp where sal>4000;
delete from emp where sal>4000
*
ERROR at line 1:
ORA-02292: integrity constraint (SCOTT.EMP_SELF_KEY) violated - child record 
found 


SQL> delete from emp where sal<2500;

1 row deleted.

SQL> rollback;

Rollback complete.

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
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                

6 rows selected.

SQL> update table emp set sal = sal*0.15 + sal where deptno = any(select deptno from dept where dname like '%R%');
update table emp set sal = sal*0.15 + sal where deptno = any(select deptno from dept where dname like '%R%')
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> update emp set sal = sal*0.15 + sal where deptno = any(select deptno from dept where dname like '%R%');

3 rows updated.

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
      7566 JONES      MANAGER         7839 02-APR-81    3421.25                 
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3450                 
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3450                 
        20                                                                      
                                                                                

6 rows selected.

SQL> spool off;

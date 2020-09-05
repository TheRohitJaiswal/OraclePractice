SQL> conn scott/tiger
Connected.
SQL> select * from tab
  2  ;

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

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> select empno, ename, sal from emp where sal > 2000;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7839 KING             5000                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7566 JONES            2975                                                
      7902 FORD             3000                                                
      7788 SCOTT            3000                                                

6 rows selected.

SQL> insert into test values(103);

1 row created.

SQL> select * from test;

        ID                                                                      
----------                                                                      
       101                                                                      
       102                                                                      
       103                                                                      

SQL> show user
USER is "SCOTT"
SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                    NOT NULL NUMBER(2)

SQL> spool off
SQL> select empno, ename, sal, sal+1000 from emp where sal > 2000;

     EMPNO ENAME             SAL   SAL+1000                                     
---------- ---------- ---------- ----------                                     
      7839 KING             5000       6000                                     
      7698 BLAKE            2850       3850                                     
      7782 CLARK            2450       3450                                     
      7566 JONES            2975       3975                                     
      7902 FORD             3000       4000                                     
      7788 SCOTT            3000       4000                                     

6 rows selected.

SQL> select empno, ename, sal, sal+1000 as Revised Salary from emp where sal > 2000;
select empno, ename, sal, sal+1000 as Revised Salary from emp where sal > 2000
                                              *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select empno, ename, sal, sal+1000 as RevisedSalary from emp where sal > 2000;

     EMPNO ENAME             SAL REVISEDSALARY                                  
---------- ---------- ---------- -------------                                  
      7839 KING             5000          6000                                  
      7698 BLAKE            2850          3850                                  
      7782 CLARK            2450          3450                                  
      7566 JONES            2975          3975                                  
      7902 FORD             3000          4000                                  
      7788 SCOTT            3000          4000                                  

6 rows selected.

SQL> select empno, ename, sal, sal+1000 as "Revised Salary" from emp where sal > 2000;

     EMPNO ENAME             SAL Revised Salary                                 
---------- ---------- ---------- --------------                                 
      7839 KING             5000           6000                                 
      7698 BLAKE            2850           3850                                 
      7782 CLARK            2450           3450                                 
      7566 JONES            2975           3975                                 
      7902 FORD             3000           4000                                 
      7788 SCOTT            3000           4000                                 

6 rows selected.

SQL> select empno, ename, sal, hiredate as "Date" from emp where sal > 2000;

     EMPNO ENAME             SAL Date                                           
---------- ---------- ---------- ---------                                      
      7839 KING             5000 17-NOV-81                                      
      7698 BLAKE            2850 01-MAY-81                                      
      7782 CLARK            2450 09-JUN-81                                      
      7566 JONES            2975 02-APR-81                                      
      7902 FORD             3000 03-DEC-81                                      
      7788 SCOTT            3000 09-DEC-82                                      

6 rows selected.

SQL> select * from emp where ename='jones';

no rows selected

SQL> select * from emp where lowwer(ename)='jones';
select * from emp where lowwer(ename)='jones'
                        *
ERROR at line 1:
ORA-00904: "LOWWER": invalid identifier 


SQL> select * from emp where lower(ename)='jones';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                

SQL> select * from emp where lower(ename)='jones' and sal>2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                

SQL> select * from emp where lower(ename)='jones' or sal>2000;

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

SQL> select ename,'Works as',job from emp;

ENAME      'WORKSAS JOB                                                         
---------- -------- ---------                                                   
KING       Works as PRESIDENT                                                   
BLAKE      Works as MANAGER                                                     
CLARK      Works as MANAGER                                                     
JONES      Works as MANAGER                                                     
MARTIN     Works as SALESMAN                                                    
ALLEN      Works as SALESMAN                                                    
TURNER     Works as SALESMAN                                                    
JAMES      Works as CLERK                                                       
WARD       Works as SALESMAN                                                    
FORD       Works as ANALYST                                                     
SMITH      Works as CLERK                                                       

ENAME      'WORKSAS JOB                                                         
---------- -------- ---------                                                   
SCOTT      Works as ANALYST                                                     
ADAMS      Works as CLERK                                                       
MILLER     Works as CLERK                                                       

14 rows selected.

SQL> select ename||'Works as'||job from emp;

ENAME||'WORKSAS'||JOB                                                           
---------------------------                                                     
KINGWorks asPRESIDENT                                                           
BLAKEWorks asMANAGER                                                            
CLARKWorks asMANAGER                                                            
JONESWorks asMANAGER                                                            
MARTINWorks asSALESMAN                                                          
ALLENWorks asSALESMAN                                                           
TURNERWorks asSALESMAN                                                          
JAMESWorks asCLERK                                                              
WARDWorks asSALESMAN                                                            
FORDWorks asANALYST                                                             
SMITHWorks asCLERK                                                              

ENAME||'WORKSAS'||JOB                                                           
---------------------------                                                     
SCOTTWorks asANALYST                                                            
ADAMSWorks asCLERK                                                              
MILLERWorks asCLERK                                                             

14 rows selected.

SQL> select ename ||'Works as'|| job from emp;

ENAME||'WORKSAS'||JOB                                                           
---------------------------                                                     
KINGWorks asPRESIDENT                                                           
BLAKEWorks asMANAGER                                                            
CLARKWorks asMANAGER                                                            
JONESWorks asMANAGER                                                            
MARTINWorks asSALESMAN                                                          
ALLENWorks asSALESMAN                                                           
TURNERWorks asSALESMAN                                                          
JAMESWorks asCLERK                                                              
WARDWorks asSALESMAN                                                            
FORDWorks asANALYST                                                             
SMITHWorks asCLERK                                                              

ENAME||'WORKSAS'||JOB                                                           
---------------------------                                                     
SCOTTWorks asANALYST                                                            
ADAMSWorks asCLERK                                                              
MILLERWorks asCLERK                                                             

14 rows selected.

SQL> select ename ||' Works as '|| job from emp;

ENAME||'WORKSAS'||JOB                                                           
-----------------------------                                                   
KING Works as PRESIDENT                                                         
BLAKE Works as MANAGER                                                          
CLARK Works as MANAGER                                                          
JONES Works as MANAGER                                                          
MARTIN Works as SALESMAN                                                        
ALLEN Works as SALESMAN                                                         
TURNER Works as SALESMAN                                                        
JAMES Works as CLERK                                                            
WARD Works as SALESMAN                                                          
FORD Works as ANALYST                                                           
SMITH Works as CLERK                                                            

ENAME||'WORKSAS'||JOB                                                           
-----------------------------                                                   
SCOTT Works as ANALYST                                                          
ADAMS Works as CLERK                                                            
MILLER Works as CLERK                                                           

14 rows selected.

SQL> select ename ||' Works as '|| job as Employee from emp;

EMPLOYEE                                                                        
-----------------------------                                                   
KING Works as PRESIDENT                                                         
BLAKE Works as MANAGER                                                          
CLARK Works as MANAGER                                                          
JONES Works as MANAGER                                                          
MARTIN Works as SALESMAN                                                        
ALLEN Works as SALESMAN                                                         
TURNER Works as SALESMAN                                                        
JAMES Works as CLERK                                                            
WARD Works as SALESMAN                                                          
FORD Works as ANALYST                                                           
SMITH Works as CLERK                                                            

EMPLOYEE                                                                        
-----------------------------                                                   
SCOTT Works as ANALYST                                                          
ADAMS Works as CLERK                                                            
MILLER Works as CLERK                                                           

14 rows selected.

SQL> select empno, ename, sal from emp where sal between 2000 and 3000;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7566 JONES            2975                                                
      7902 FORD             3000                                                
      7788 SCOTT            3000                                                

SQL> select empno, ename, sal from emp where sal not between 2000 and 3000;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7839 KING             5000                                                
      7654 MARTIN           1250                                                
      7499 ALLEN            1600                                                
      7844 TURNER           1500                                                
      7900 JAMES             950                                                
      7521 WARD             1250                                                
      7369 SMITH             800                                                
      7876 ADAMS            1100                                                
      7934 MILLER           1300                                                

9 rows selected.

SQL> select empno, ename, sal from emp where lower(ename) in ('jones','scott','smith');

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7566 JONES            2975                                                
      7369 SMITH             800                                                
      7788 SCOTT            3000                                                

SQL> select empno, ename, sal from emp where lower(ename) not in ('jones','scott','smith');

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7839 KING             5000                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7654 MARTIN           1250                                                
      7499 ALLEN            1600                                                
      7844 TURNER           1500                                                
      7900 JAMES             950                                                
      7521 WARD             1250                                                
      7902 FORD             3000                                                
      7876 ADAMS            1100                                                
      7934 MILLER           1300                                                

11 rows selected.

SQL> select empno, ename, sal from emp where comm is null;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7839 KING             5000                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7566 JONES            2975                                                
      7900 JAMES             950                                                
      7902 FORD             3000                                                
      7369 SMITH             800                                                
      7788 SCOTT            3000                                                
      7876 ADAMS            1100                                                
      7934 MILLER           1300                                                

10 rows selected.

SQL> select empno, ename, sal from emp where comm is not null;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7654 MARTIN           1250                                                
      7499 ALLEN            1600                                                
      7844 TURNER           1500                                                
      7521 WARD             1250                                                

SQL> select empno, ename, sal, comm from emp where comm is not null;

     EMPNO ENAME             SAL       COMM                                     
---------- ---------- ---------- ----------                                     
      7654 MARTIN           1250       1400                                     
      7499 ALLEN            1600        300                                     
      7844 TURNER           1500          0                                     
      7521 WARD             1250        500                                     

SQL> select empno, ename, sal from emp where ename like 'A%';

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7499 ALLEN            1600                                                
      7876 ADAMS            1100                                                

SQL> select empno, ename, sal from emp where ename like '__A%';

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7876 ADAMS            1100                                                

SQL> select empno, ename, sal from emp where ename like '%A';

no rows selected

SQL> select empno, ename, sal from emp where ename like '%s';

no rows selected

SQL> select empno, ename, sal from emp where lower(ename) like '%s';

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7566 JONES            2975                                                
      7900 JAMES             950                                                
      7876 ADAMS            1100                                                

SQL> select empno, ename, sal from emp order by empno;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7369 SMITH             800                                                
      7499 ALLEN            1600                                                
      7521 WARD             1250                                                
      7566 JONES            2975                                                
      7654 MARTIN           1250                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7788 SCOTT            3000                                                
      7839 KING             5000                                                
      7844 TURNER           1500                                                
      7876 ADAMS            1100                                                

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7900 JAMES             950                                                
      7902 FORD             3000                                                
      7934 MILLER           1300                                                

14 rows selected.

SQL> select empno, ename, sal from emp order by empno desc;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7934 MILLER           1300                                                
      7902 FORD             3000                                                
      7900 JAMES             950                                                
      7876 ADAMS            1100                                                
      7844 TURNER           1500                                                
      7839 KING             5000                                                
      7788 SCOTT            3000                                                
      7782 CLARK            2450                                                
      7698 BLAKE            2850                                                
      7654 MARTIN           1250                                                
      7566 JONES            2975                                                

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7521 WARD             1250                                                
      7499 ALLEN            1600                                                
      7369 SMITH             800                                                

14 rows selected.

SQL> select deptno, ename, job from emp order by deptno desc;

    DEPTNO ENAME      JOB                                                       
---------- ---------- ---------                                                 
        30 TURNER     SALESMAN                                                  
        30 WARD       SALESMAN                                                  
        30 JAMES      CLERK                                                     
        30 ALLEN      SALESMAN                                                  
        30 MARTIN     SALESMAN                                                  
        30 BLAKE      MANAGER                                                   
        20 SCOTT      ANALYST                                                   
        20 SMITH      CLERK                                                     
        20 FORD       ANALYST                                                   
        20 JONES      MANAGER                                                   
        20 ADAMS      CLERK                                                     

    DEPTNO ENAME      JOB                                                       
---------- ---------- ---------                                                 
        10 MILLER     CLERK                                                     
        10 CLARK      MANAGER                                                   
        10 KING       PRESIDENT                                                 

14 rows selected.

SQL> select deptno, ename, job from emp order by deptno;

    DEPTNO ENAME      JOB                                                       
---------- ---------- ---------                                                 
        10 KING       PRESIDENT                                                 
        10 CLARK      MANAGER                                                   
        10 MILLER     CLERK                                                     
        20 ADAMS      CLERK                                                     
        20 SCOTT      ANALYST                                                   
        20 SMITH      CLERK                                                     
        20 FORD       ANALYST                                                   
        20 JONES      MANAGER                                                   
        30 WARD       SALESMAN                                                  
        30 JAMES      CLERK                                                     
        30 ALLEN      SALESMAN                                                  

    DEPTNO ENAME      JOB                                                       
---------- ---------- ---------                                                 
        30 MARTIN     SALESMAN                                                  
        30 BLAKE      MANAGER                                                   
        30 TURNER     SALESMAN                                                  

14 rows selected.

SQL> select deptno, job, ename from emp order by deptno, job;

    DEPTNO JOB       ENAME                                                      
---------- --------- ----------                                                 
        10 CLERK     MILLER                                                     
        10 MANAGER   CLARK                                                      
        10 PRESIDENT KING                                                       
        20 ANALYST   FORD                                                       
        20 ANALYST   SCOTT                                                      
        20 CLERK     ADAMS                                                      
        20 CLERK     SMITH                                                      
        20 MANAGER   JONES                                                      
        30 CLERK     JAMES                                                      
        30 MANAGER   BLAKE                                                      
        30 SALESMAN  WARD                                                       

    DEPTNO JOB       ENAME                                                      
---------- --------- ----------                                                 
        30 SALESMAN  ALLEN                                                      
        30 SALESMAN  MARTIN                                                     
        30 SALESMAN  TURNER                                                     

14 rows selected.

SQL> set pagesize 20
SQL> select deptno, job, ename from emp order by deptno, job;

    DEPTNO JOB       ENAME                                                      
---------- --------- ----------                                                 
        10 CLERK     MILLER                                                     
        10 MANAGER   CLARK                                                      
        10 PRESIDENT KING                                                       
        20 ANALYST   FORD                                                       
        20 ANALYST   SCOTT                                                      
        20 CLERK     ADAMS                                                      
        20 CLERK     SMITH                                                      
        20 MANAGER   JONES                                                      
        30 CLERK     JAMES                                                      
        30 MANAGER   BLAKE                                                      
        30 SALESMAN  WARD                                                       
        30 SALESMAN  ALLEN                                                      
        30 SALESMAN  MARTIN                                                     
        30 SALESMAN  TURNER                                                     

14 rows selected.

SQL> spool off

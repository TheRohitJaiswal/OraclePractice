SQL> CL SCR

SQL> SELECT AVG(SAL) FROM EMP;

  AVG(SAL)                                                                      
----------                                                                      
2073.21429                                                                      

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                 
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

SQL> SELECT COMM FROM EMP;

      COMM                                                                      
----------                                                                      
                                                                                
       300                                                                      
       500                                                                      
                                                                                
      1400                                                                      
                                                                                
                                                                                
                                                                                
                                                                                
         0                                                                      
                                                                                

      COMM                                                                      
----------                                                                      
                                                                                
                                                                                
                                                                                

14 rows selected.

SQL> SELECT AVG(COMM) FROM EMP;

 AVG(COMM)                                                                      
----------                                                                      
       550                                                                      

SQL> SELECT NVL(COMM,0) FROM EMP;

NVL(COMM,0)                                                                     
-----------                                                                     
          0                                                                     
        300                                                                     
        500                                                                     
          0                                                                     
       1400                                                                     
          0                                                                     
          0                                                                     
          0                                                                     
          0                                                                     
          0                                                                     
          0                                                                     

NVL(COMM,0)                                                                     
-----------                                                                     
          0                                                                     
          0                                                                     
          0                                                                     

14 rows selected.

SQL> SELECT AVG(NVL(COMM,0)) FROM EMP;

AVG(NVL(COMM,0))                                                                
----------------                                                                
      157.142857                                                                

SQL> SELECT MAX(SAL) FROM EMP;

  MAX(SAL)                                                                      
----------                                                                      
      5000                                                                      

SQL> SELECT MIN(SAL) FROM EMP;

  MIN(SAL)                                                                      
----------                                                                      
       800                                                                      

SQL> SELECT COUNT(*) FROM EMP;

  COUNT(*)                                                                      
----------                                                                      
        14                                                                      

SQL> SELECT COUNT(COMM) FROM EMP;

COUNT(COMM)                                                                     
-----------                                                                     
          4                                                                     

SQL> SELECT COUNT(NVL(COMM,0)) FROM EMP;

COUNT(NVL(COMM,0))                                                              
------------------                                                              
                14                                                              

SQL> 
SQL> 
SQL> SELECT DISTINCT JOB FROM EMP;

JOB                                                                             
---------                                                                       
CLERK                                                                           
SALESMAN                                                                        
PRESIDENT                                                                       
MANAGER                                                                         
ANALYST                                                                         

SQL> SELECT MAX(ENAME) FROM EMP;

MAX(ENAME)                                                                      
----------                                                                      
WARD                                                                            

SQL> SELECT MIN(ENAME) FROM EMP;

MIN(ENAME)                                                                      
----------                                                                      
ADAMS                                                                           

SQL> SELECT DISTINCT DEPTNO,SUM(SAL) FROM EMP;
SELECT DISTINCT DEPTNO,SUM(SAL) FROM EMP
                *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> CL SCR

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> SELECT DEPTNO,SUM(SAL) FROM EMP;
SELECT DEPTNO,SUM(SAL) FROM EMP
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT AVG(SAL),SUM(SAL) FROM EMP;

  AVG(SAL)   SUM(SAL)                                                           
---------- ----------                                                           
2073.21429      29025                                                           

SQL> SELECT COUNT(SAL),SUM(SAL) FROM EMP;

COUNT(SAL)   SUM(SAL)                                                           
---------- ----------                                                           
        14      29025                                                           

SQL> SELECT EMPNO,ENAME FROM EMP
  2  ;

     EMPNO ENAME                                                                
---------- ----------                                                           
      7369 SMITH                                                                
      7499 ALLEN                                                                
      7521 WARD                                                                 
      7566 JONES                                                                
      7654 MARTIN                                                               
      7698 BLAKE                                                                
      7782 CLARK                                                                
      7788 SCOTT                                                                
      7839 KING                                                                 
      7844 TURNER                                                               
      7876 ADAMS                                                                

     EMPNO ENAME                                                                
---------- ----------                                                           
      7900 JAMES                                                                
      7902 FORD                                                                 
      7934 MILLER                                                               

14 rows selected.

SQL> SELECT JOB,EMPNO FROM EMP;

JOB            EMPNO                                                            
--------- ----------                                                            
CLERK           7369                                                            
SALESMAN        7499                                                            
SALESMAN        7521                                                            
MANAGER         7566                                                            
SALESMAN        7654                                                            
MANAGER         7698                                                            
MANAGER         7782                                                            
ANALYST         7788                                                            
PRESIDENT       7839                                                            
SALESMAN        7844                                                            
CLERK           7876                                                            

JOB            EMPNO                                                            
--------- ----------                                                            
CLERK           7900                                                            
ANALYST         7902                                                            
CLERK           7934                                                            

14 rows selected.

SQL> SELECT DEPTNO,SUM(SAL) FROM EMP;
SELECT DEPTNO,SUM(SAL) FROM EMP
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO;

    DEPTNO   SUM(SAL)                                                           
---------- ----------                                                           
        30       9400                                                           
        20      10875                                                           
        10       8750                                                           

SQL> SELECT DETPNO,SAL FROM EMP ORDER BY DEPTENO;
SELECT DETPNO,SAL FROM EMP ORDER BY DEPTENO
                                    *
ERROR at line 1:
ORA-00904: "DEPTENO": invalid identifier 


SQL> SELECT DETPNO,SAL FROM EMP ORDER BY DEPTNO;
SELECT DETPNO,SAL FROM EMP ORDER BY DEPTNO
       *
ERROR at line 1:
ORA-00904: "DETPNO": invalid identifier 


SQL> SELECT DETPNO,SAL FROM EMP ORDER BY DEPTNO;
SELECT DETPNO,SAL FROM EMP ORDER BY DEPTNO
       *
ERROR at line 1:
ORA-00904: "DETPNO": invalid identifier 


SQL> SELECT DEPTNO,SAL FROM EMP ORDER BY DEPTNO;

    DEPTNO        SAL                                                           
---------- ----------                                                           
        10       2450                                                           
        10       5000                                                           
        10       1300                                                           
        20       2975                                                           
        20       3000                                                           
        20       1100                                                           
        20        800                                                           
        20       3000                                                           
        30       1250                                                           
        30       1500                                                           
        30       1600                                                           

    DEPTNO        SAL                                                           
---------- ----------                                                           
        30        950                                                           
        30       2850                                                           
        30       1250                                                           

14 rows selected.

SQL> SELECT JOB FROM EMP ORDER BY JOB;

JOB                                                                             
---------                                                                       
ANALYST                                                                         
ANALYST                                                                         
CLERK                                                                           
CLERK                                                                           
CLERK                                                                           
CLERK                                                                           
MANAGER                                                                         
MANAGER                                                                         
MANAGER                                                                         
PRESIDENT                                                                       
SALESMAN                                                                        

JOB                                                                             
---------                                                                       
SALESMAN                                                                        
SALESMAN                                                                        
SALESMAN                                                                        

14 rows selected.

SQL> SELECT JOB,COUNT(*) FROM EMP GROUP BY JOB;

JOB         COUNT(*)                                                            
--------- ----------                                                            
CLERK              4                                                            
SALESMAN           4                                                            
PRESIDENT          1                                                            
MANAGER            3                                                            
ANALYST            2                                                            

SQL> SELECT JOB,AVG(SAL) FROM EMP GROUP BY JOB;

JOB         AVG(SAL)                                                            
--------- ----------                                                            
CLERK         1037.5                                                            
SALESMAN        1400                                                            
PRESIDENT       5000                                                            
MANAGER   2758.33333                                                            
ANALYST         3000                                                            

SQL> SELECT JOB,AVG(SAL) FROM EMP GROUP BY DEPTNO;
SELECT JOB,AVG(SAL) FROM EMP GROUP BY DEPTNO
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> SELECT SUM(SAL) FROM EMP GROUP BY DEPTNO;

  SUM(SAL)                                                                      
----------                                                                      
      9400                                                                      
     10875                                                                      
      8750                                                                      

SQL> SELECT MGR,COUNT(*) FROM EMP GROUP BY MGR;

       MGR   COUNT(*)                                                           
---------- ----------                                                           
      7839          3                                                           
                    1                                                           
      7782          1                                                           
      7698          5                                                           
      7902          1                                                           
      7566          2                                                           
      7788          1                                                           

7 rows selected.

SQL> SELECT MGR,COUNT(*) FROM EMP WHERE MGR IS NOT NULL GROUP BY MGR;

       MGR   COUNT(*)                                                           
---------- ----------                                                           
      7839          3                                                           
      7782          1                                                           
      7698          5                                                           
      7902          1                                                           
      7566          2                                                           
      7788          1                                                           

6 rows selected.

SQL> SELECT MGR,COUNT(*) FROM EMP WHERE MGR IS NOT NULL GROUP BY MGR ORDER BY MGR DESC;

       MGR   COUNT(*)                                                           
---------- ----------                                                           
      7902          1                                                           
      7839          3                                                           
      7788          1                                                           
      7782          1                                                           
      7698          5                                                           
      7566          2                                                           

6 rows selected.

SQL> SELECT MGR,COUNT(*) FROM EMP WHERE MGR IS NOT NULL AND COUNT(*)>2 GROUP BY MGR ORDER BY MGR
  2  DESC;
SELECT MGR,COUNT(*) FROM EMP WHERE MGR IS NOT NULL AND COUNT(*)>2 GROUP BY MGR ORDER BY MGR
                                                       *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> SELECT MGR,COUNT(*) FROM EMP WHERE MGR IS NOT NULL GROUP BY MGR HAVING COUNT(*)>2 ORDER BY MGR
  2  DESC;

       MGR   COUNT(*)                                                           
---------- ----------                                                           
      7839          3                                                           
      7698          5                                                           

SQL> SELECT DEPTNO,SUM(SAL) TOTAL FROM EMP GROUP BY DEPTNO
  2  HAVING SUM(SAL)>8000 ORDER BY TOTAL DESC;

    DEPTNO      TOTAL                                                           
---------- ----------                                                           
        20      10875                                                           
        30       9400                                                           
        10       8750                                                           

SQL> SELECT DEPTNO,SUM(SAL) TOTAL FROM EMP GROUP BY DEPTNO
  2  HAVING SUM(SAL)>9000 ORDER BY TOTAL DESC;

    DEPTNO      TOTAL                                                           
---------- ----------                                                           
        20      10875                                                           
        30       9400                                                           

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> 
SQL> 
SQL> CREATE TABLE DEPT1 AS SELECT * FROM DEPT;

Table created.

SQL> INSERT INTO DEPT1 VALUES(50,'MKT','HDC');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM DEPT1;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                
        50 MKT            HDC                                                   

SQL> SELECT DEPTNO FROM DEPT1 UNION SELECT DEPTNO FROM DEPT;

    DEPTNO                                                                      
----------                                                                      
        10                                                                      
        20                                                                      
        30                                                                      
        40                                                                      
        50                                                                      

SQL> SELECT DEPTNO FROM DEPT1 UNION ALL SELECT DEPTNO FROM DEPT;

    DEPTNO                                                                      
----------                                                                      
        10                                                                      
        20                                                                      
        30                                                                      
        40                                                                      
        50                                                                      
        10                                                                      
        20                                                                      
        30                                                                      
        40                                                                      

9 rows selected.

SQL> SELECT DEPTNO FROM DEPT1 INTERSECT ALL SELECT DEPTNO FROM DEPT;
SELECT DEPTNO FROM DEPT1 INTERSECT ALL SELECT DEPTNO FROM DEPT
                                   *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> SELECT DEPTNO FROM DEPT1 INTERSECT  SELECT DEPTNO FROM DEPT;

    DEPTNO                                                                      
----------                                                                      
        10                                                                      
        20                                                                      
        30                                                                      
        40                                                                      

SQL> SELECT DEPTNO FROM DEPT1 MINUS  SELECT DEPTNO FROM DEPT;

    DEPTNO                                                                      
----------                                                                      
        50                                                                      

SQL> SELECT DEPTNO,DNAME FROM DEPT1 UNION SELECT DEPTNO FROM DEPT;
SELECT DEPTNO,DNAME FROM DEPT1 UNION SELECT DEPTNO FROM DEPT
*
ERROR at line 1:
ORA-01789: query block has incorrect number of result columns 


SQL> SELECT DEPTNO,DNAME FROM DEPT1 UNION SELECT DEPTNO,NULL FROM DEPT;

    DEPTNO DNAME                                                                
---------- --------------                                                       
        10 ACCOUNTING                                                           
        10                                                                      
        20 RESEARCH                                                             
        20                                                                      
        30 SALES                                                                
        30                                                                      
        40 OPERATIONS                                                           
        40                                                                      
        50 MKT                                                                  

9 rows selected.

SQL> SELECT DEPTNO FROM DEPT1 UNION SELECT DNAME FROM DEPT;
SELECT DEPTNO FROM DEPT1 UNION SELECT DNAME FROM DEPT
       *
ERROR at line 1:
ORA-01790: expression must have same datatype as corresponding expression 


SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> SELECT * FROM DEPT1;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                
        50 MKT            HDC                                                   

SQL> CL SCR

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> SELECT DEPTNO,SUM(SAL) FROM EMP;
SELECT DEPTNO,SUM(SAL) FROM EMP
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO;

    DEPTNO   SUM(SAL)                                                           
---------- ----------                                                           
        30       9400                                                           
        20      10875                                                           
        10       8750                                                           

SQL> SELECT JOB,SUM(SAL) FROM EMP GROUP BY JOB;

JOB         SUM(SAL)                                                            
--------- ----------                                                            
CLERK           4150                                                            
SALESMAN        5600                                                            
PRESIDENT       5000                                                            
MANAGER         8275                                                            
ANALYST         6000                                                            

SQL> SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO UNION
  2  SELECT JOB,SUM(SAL) FROM EMP GROUP BY JOB;
SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO UNION
       *
ERROR at line 1:
ORA-01790: expression must have same datatype as corresponding expression 


SQL> SELECT NULL,DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO UNION
  2  SELECT JOB,NULL,SUM(SAL) FROM EMP GROUP BY JOB;

NULL          DEPTNO   SUM(SAL)                                                 
--------- ---------- ----------                                                 
ANALYST                    6000                                                 
CLERK                      4150                                                 
MANAGER                    8275                                                 
PRESIDENT                  5000                                                 
SALESMAN                   5600                                                 
                  10       8750                                                 
                  20      10875                                                 
                  30       9400                                                 

8 rows selected.

SQL> SELECT JOB FROM EMP UNION SELECT NULL FROM EMP;

JOB                                                                             
---------                                                                       
ANALYST                                                                         
CLERK                                                                           
MANAGER                                                                         
PRESIDENT                                                                       
SALESMAN                                                                        
                                                                                

6 rows selected.

SQL> SELECT DEPTNO FROM EMP UNION SELECT NULL FROM EMP;

    DEPTNO                                                                      
----------                                                                      
        10                                                                      
        20                                                                      
        30                                                                      
                                                                                

SQL> SELECT NULL,DEPTNO FROM EMP UNION SELECT JOB,NULL FROM EMP;

NULL          DEPTNO                                                            
--------- ----------                                                            
ANALYST                                                                         
CLERK                                                                           
MANAGER                                                                         
PRESIDENT                                                                       
SALESMAN                                                                        
                  10                                                            
                  20                                                            
                  30                                                            

8 rows selected.

SQL> 
SQL> 
SQL> 
SQL> SELECT ENAME FROM EMP;

ENAME                                                                           
----------                                                                      
SMITH                                                                           
ALLEN                                                                           
WARD                                                                            
JONES                                                                           
MARTIN                                                                          
BLAKE                                                                           
CLARK                                                                           
SCOTT                                                                           
KING                                                                            
TURNER                                                                          
ADAMS                                                                           

ENAME                                                                           
----------                                                                      
JAMES                                                                           
FORD                                                                            
MILLER                                                                          

14 rows selected.

SQL> SELECT DNAME FROM DEPT;

DNAME                                                                           
--------------                                                                  
ACCOUNTING                                                                      
RESEARCH                                                                        
SALES                                                                           
OPERATIONS                                                                      

SQL> SELECT ENAME,DNAME FROM EMP,DEPT;

ENAME      DNAME                                                                
---------- --------------                                                       
SMITH      ACCOUNTING                                                           
ALLEN      ACCOUNTING                                                           
WARD       ACCOUNTING                                                           
JONES      ACCOUNTING                                                           
MARTIN     ACCOUNTING                                                           
BLAKE      ACCOUNTING                                                           
CLARK      ACCOUNTING                                                           
SCOTT      ACCOUNTING                                                           
KING       ACCOUNTING                                                           
TURNER     ACCOUNTING                                                           
ADAMS      ACCOUNTING                                                           

ENAME      DNAME                                                                
---------- --------------                                                       
JAMES      ACCOUNTING                                                           
FORD       ACCOUNTING                                                           
MILLER     ACCOUNTING                                                           
SMITH      RESEARCH                                                             
ALLEN      RESEARCH                                                             
WARD       RESEARCH                                                             
JONES      RESEARCH                                                             
MARTIN     RESEARCH                                                             
BLAKE      RESEARCH                                                             
CLARK      RESEARCH                                                             
SCOTT      RESEARCH                                                             

ENAME      DNAME                                                                
---------- --------------                                                       
KING       RESEARCH                                                             
TURNER     RESEARCH                                                             
ADAMS      RESEARCH                                                             
JAMES      RESEARCH                                                             
FORD       RESEARCH                                                             
MILLER     RESEARCH                                                             
SMITH      SALES                                                                
ALLEN      SALES                                                                
WARD       SALES                                                                
JONES      SALES                                                                
MARTIN     SALES                                                                

ENAME      DNAME                                                                
---------- --------------                                                       
BLAKE      SALES                                                                
CLARK      SALES                                                                
SCOTT      SALES                                                                
KING       SALES                                                                
TURNER     SALES                                                                
ADAMS      SALES                                                                
JAMES      SALES                                                                
FORD       SALES                                                                
MILLER     SALES                                                                
SMITH      OPERATIONS                                                           
ALLEN      OPERATIONS                                                           

ENAME      DNAME                                                                
---------- --------------                                                       
WARD       OPERATIONS                                                           
JONES      OPERATIONS                                                           
MARTIN     OPERATIONS                                                           
BLAKE      OPERATIONS                                                           
CLARK      OPERATIONS                                                           
SCOTT      OPERATIONS                                                           
KING       OPERATIONS                                                           
TURNER     OPERATIONS                                                           
ADAMS      OPERATIONS                                                           
JAMES      OPERATIONS                                                           
FORD       OPERATIONS                                                           

ENAME      DNAME                                                                
---------- --------------                                                       
MILLER     OPERATIONS                                                           

56 rows selected.

SQL> SELECT EMPNO,ENAME,SAL,DEPTNO FROM EMP;

     EMPNO ENAME             SAL     DEPTNO                                     
---------- ---------- ---------- ----------                                     
      7369 SMITH             800         20                                     
      7499 ALLEN            1600         30                                     
      7521 WARD             1250         30                                     
      7566 JONES            2975         20                                     
      7654 MARTIN           1250         30                                     
      7698 BLAKE            2850         30                                     
      7782 CLARK            2450         10                                     
      7788 SCOTT            3000         20                                     
      7839 KING             5000         10                                     
      7844 TURNER           1500         30                                     
      7876 ADAMS            1100         20                                     

     EMPNO ENAME             SAL     DEPTNO                                     
---------- ---------- ---------- ----------                                     
      7900 JAMES             950         30                                     
      7902 FORD             3000         20                                     
      7934 MILLER           1300         10                                     

14 rows selected.

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                 
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

SQL> 56 rows selected.
SQL> SELECT ENAME,DNAME FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

ENAME      DNAME                                                                
---------- --------------                                                       
SMITH      RESEARCH                                                             
ALLEN      SALES                                                                
WARD       SALES                                                                
JONES      RESEARCH                                                             
MARTIN     SALES                                                                
BLAKE      SALES                                                                
CLARK      ACCOUNTING                                                           
SCOTT      RESEARCH                                                             
KING       ACCOUNTING                                                           
TURNER     SALES                                                                
ADAMS      RESEARCH                                                             

ENAME      DNAME                                                                
---------- --------------                                                       
JAMES      SALES                                                                
FORD       RESEARCH                                                             
MILLER     ACCOUNTING                                                           

14 rows selected.

SQL> exit

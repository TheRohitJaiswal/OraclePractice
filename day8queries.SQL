SQL> CL SCR

SQL> show user
USER is "SCOTT"
SQL> select * from emp;

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

SQL> grant all on emp to wipro;

Grant succeeded.

SQL> revoke all on emp to wipro;
revoke all on emp to wipro
                  *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> revoke all on emp from wipro;

Revoke succeeded.

SQL> SHOW USER
USER is "SCOTT"
SQL> CREATE OR REPLACE VIEW V1 AS SELECT EMPNO,ENAME,SAL
  2  FROM EMP;
CREATE OR REPLACE VIEW V1 AS SELECT EMPNO,ENAME,SAL
                       *
ERROR at line 1:
ORA-01031: insufficient privileges 


SQL> conn sys/oracle123 as sysdba
Connected.
SQL> grant create view to scott;

Grant succeeded.

SQL> conn scott/tiger
Connected.
SQL> CREATE OR REPLACE VIEW V1 AS SELECT EMPNO,ENAME,SAL
  2  FROM EMP;

View created.

SQL> select * from v1;

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

SQL> grant all on v1 to wipro;

Grant succeeded.

SQL> SHOW USER
USER is "SCOTT"
SQL> INSERT INTO V1 VALUES(101,'WILLLIAM',2000);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM V1;

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
       101 WILLLIAM         2000                                                

15 rows selected.

SQL> SELECT EMPNO,ENAME,SAL FROM EMP;

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
       101 WILLLIAM         2000                                                

15 rows selected.

SQL> SELECT TEXT FROM USER_VIEWS WHERE TABLE_NAME='V1';
SELECT TEXT FROM USER_VIEWS WHERE TABLE_NAME='V1'
                                  *
ERROR at line 1:
ORA-00904: "TABLE_NAME": invalid identifier 


SQL> SELECT TEXT FROM USER_VIEWS WHERE VIEW_NAME='V1';

TEXT                                                                            
--------------------------------------------------------------------------------
SELECT EMPNO,ENAME,SAL                                                          
FROM EMP                                                                        
                                                                                

SQL> SHOW USER
USER is "SCOTT"
SQL> CL SCR

SQL> SHOW USER
USER is "SCOTT"
SQL> CREATE OR REPLACE VIEW V2 AS SELECT EMPNO,ENAME FROM EMP
  2  WITH READ ONLY;

View created.

SQL> SELECT * fROM V2;

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
       101 WILLLIAM                                                             

15 rows selected.

SQL> INSERT INTO V2 VALUES(102,'MARY',1000);
INSERT INTO V2 VALUES(102,'MARY',1000)
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> INSERT INTO V2 VALUES(102,'MARY');
INSERT INTO V2 VALUES(102,'MARY')
*
ERROR at line 1:
ORA-42399: cannot perform a DML operation on a read-only view 


SQL> CREATE OR REPLACE VIEW V3 AS SELECT EMPNO,ENAME,SAL FROM
  2  EMP WHERE SAL>2000;

View created.

SQL> SELECT * FROM V3;

     EMPNO ENAME             SAL                                                
---------- ---------- ----------                                                
      7566 JONES            2975                                                
      7698 BLAKE            2850                                                
      7782 CLARK            2450                                                
      7788 SCOTT            3000                                                
      7839 KING             5000                                                
      7902 FORD             3000                                                

6 rows selected.

SQL> SHOW USER
USER is "SCOTT"
SQL> GRANT ALL ON V3 TO WIPRO;

Grant succeeded.

SQL> SELECT * fROM EMP;

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
                                                                                
       101 WILLLIAM                                        2000                 
                                                                                
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
       102 MARY                                            1000                 
                                                                                
                                                                                

16 rows selected.

SQL> SHOW USER
USER is "SCOTT"
SQL> CREATE OR REPLACE VIEW V3 AS SELECT EMPNO,ENAME,SAL FROM
  2  EMP WITH CHECK OPTION;

View created.

SQL> GRANT ALL ON V3 TO WIPRO;

Grant succeeded.

SQL> CREATE OR REPLACE VIEW V3 AS SELECT EMPNO,ENAME,SAL FROM
  2  EMP WHERE SAL>2000 WITH CHECK OPTION;

View created.

SQL> CREATE OR REPLACE VIEW V4 AS SELECT EMPNO,ENAME,DNAME
  2  FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

View created.

SQL> SELECT * FROM V4;

     EMPNO ENAME      DNAME                                                     
---------- ---------- --------------                                            
      7369 SMITH      RESEARCH                                                  
      7499 ALLEN      SALES                                                     
      7521 WARD       SALES                                                     
      7566 JONES      RESEARCH                                                  
      7654 MARTIN     SALES                                                     
      7698 BLAKE      SALES                                                     
      7782 CLARK      ACCOUNTING                                                
      7788 SCOTT      RESEARCH                                                  
      7839 KING       ACCOUNTING                                                
      7844 TURNER     SALES                                                     
      7876 ADAMS      RESEARCH                                                  

     EMPNO ENAME      DNAME                                                     
---------- ---------- --------------                                            
      7900 JAMES      SALES                                                     
      7902 FORD       RESEARCH                                                  
      7934 MILLER     ACCOUNTING                                                

14 rows selected.

SQL> CREATE OR REPLACE FORCE VIEW V5 AS SELECT EMPNO
  2  FROM XYZ;

Warning: View created with compilation errors.

SQL> DESC XYZ
ERROR:
ORA-04043: object XYZ does not exist 


SQL> SELECT * FROM XYZ;
SELECT * FROM XYZ
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM V5;
SELECT * FROM V5
              *
ERROR at line 1:
ORA-04063: view "SCOTT.V5" has errors 


SQL> CREATE TABLE XYZ(EMPNO INTEGER);

Table created.

SQL> INSERT INTO XYZ VALUES(101);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM V5;

     EMPNO                                                                      
----------                                                                      
       101                                                                      

SQL> ALTER VIEW V5 COMPILE;

View altered.

SQL> SELECT * FROM V5;

     EMPNO                                                                      
----------                                                                      
       101                                                                      

SQL> SHOW USER
USER is "SCOTT"
SQL> CL SCR

SQL> CREATE TABLE EMPLOYEES(EMPID INTEGER,EMPNAME VARCHAR2(20));

Table created.

SQL> INSERT INTO EMPLOYEES VALUES(101,'WILLIAM');

1 row created.

SQL> INSERT INTO EMPLOYEES VALUES(102,
  2  'MARY');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * fROM EMPLOYEES;

     EMPID EMPNAME                                                              
---------- --------------------                                                 
       101 WILLIAM                                                              
       102 MARY                                                                 

SQL> GRANT ALL ON EMPLOYEES TO WIPRO;

Grant succeeded.

SQL> CONN sys/oracle123 as sysdba
Connected.
SQL> grant create synonym to wipro,scott;

Grant succeeded.

SQL> conn scott/tiger
Connected.
SQL> cl scr

SQL> show user
USER is "SCOTT"
SQL> create synonym e for emp;

Synonym created.

SQL> select * from e;

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
                                                                                
       101 WILLLIAM                                        2000                 
                                                                                
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
       102 MARY                                            1000                 
                                                                                
                                                                                
       103 JERRY                                           1000                 
                                                                                
                                                                                
       104 JERRY1                                          1000                 
                                                                                
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
       105 JERRY2                                          3000                 
                                                                                
                                                                                

19 rows selected.

SQL> create synonym e1 for empxyz;

Synonym created.

SQL> desc empxyz
ERROR:
ORA-04043: object empxyz does not exist 


SQL> SELECT * FROM E1;
SELECT * FROM E1
              *
ERROR at line 1:
ORA-00980: synonym translation is no longer valid 


SQL> SHOW USER
USER is "SCOTT"
SQL> CREATE SEQUENCE S1 START WITH 5 INCREMENT BY
  2  5 MINVALUE 5 MAXVALUE 20 CYCLE CACHE 3;

Sequence created.

SQL> SELECT S1.NEXTVAL FROM DUAL;

   NEXTVAL                                                                      
----------                                                                      
         5                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        10                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        15                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        20                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
         5                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        10                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        15                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        20                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
         5                                                                      

SQL> CL SCR

SQL> SELECT S1.CURRVAL FROM DUAL;

   CURRVAL                                                                      
----------                                                                      
         5                                                                      

SQL> /

   CURRVAL                                                                      
----------                                                                      
         5                                                                      

SQL> /

   CURRVAL                                                                      
----------                                                                      
         5                                                                      

SQL> /

   CURRVAL                                                                      
----------                                                                      
         5                                                                      

SQL> CREATE SEQUENCE S2;

Sequence created.

SQL> INSERT INTO EMP(EMPNO,ENAME) VALUES(S2.NEXTVAL,
  2  '&NAME');
Enter value for name: KELLY
old   2: '&NAME')
new   2: 'KELLY')

1 row created.

SQL> /
Enter value for name: RAJ
old   2: '&NAME')
new   2: 'RAJ')

1 row created.

SQL> /
Enter value for name: SHAM
old   2: '&NAME')
new   2: 'SHAM')

1 row created.

SQL> SELECT EMPNO FROM EMP;

     EMPNO                                                                      
----------                                                                      
      7369                                                                      
      7499                                                                      
      7521                                                                      
      7566                                                                      
      7654                                                                      
      7698                                                                      
      7782                                                                      
      7788                                                                      
      7839                                                                      
      7844                                                                      
      7876                                                                      

     EMPNO                                                                      
----------                                                                      
      7900                                                                      
      7902                                                                      
      7934                                                                      
       101                                                                      
         1                                                                      
         2                                                                      
         3                                                                      
       102                                                                      
       103                                                                      
       104                                                                      
       105                                                                      

22 rows selected.

SQL> SELECT EMPNO,ENAME FROM EMP;

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
       101 WILLLIAM                                                             
         1 KELLY                                                                
         2 RAJ                                                                  
         3 SHAM                                                                 
       102 MARY                                                                 
       103 JERRY                                                                
       104 JERRY1                                                               
       105 JERRY2                                                               

22 rows selected.

SQL> SELECT SEQUENCE_NAME FROM USER_SEQUENCES;

SEQUENCE_NAME                                                                   
------------------------------                                                  
S1                                                                              
S2                                                                              

SQL> SELECT ROWID,EMPNO FROM EMP;

ROWID                   EMPNO                                                   
------------------ ----------                                                   
AAAE9DAAFAAAAEdAAA       7369                                                   
AAAE9DAAFAAAAEdAAB       7499                                                   
AAAE9DAAFAAAAEdAAC       7521                                                   
AAAE9DAAFAAAAEdAAD       7566                                                   
AAAE9DAAFAAAAEdAAE       7654                                                   
AAAE9DAAFAAAAEdAAF       7698                                                   
AAAE9DAAFAAAAEdAAG       7782                                                   
AAAE9DAAFAAAAEdAAH       7788                                                   
AAAE9DAAFAAAAEdAAI       7839                                                   
AAAE9DAAFAAAAEdAAJ       7844                                                   
AAAE9DAAFAAAAEdAAK       7876                                                   

ROWID                   EMPNO                                                   
------------------ ----------                                                   
AAAE9DAAFAAAAEdAAL       7900                                                   
AAAE9DAAFAAAAEdAAM       7902                                                   
AAAE9DAAFAAAAEdAAN       7934                                                   
AAAE9DAAFAAAAEdAAO        101                                                   
AAAE9DAAFAAAAEdAAP          1                                                   
AAAE9DAAFAAAAEdAAQ          2                                                   
AAAE9DAAFAAAAEdAAR          3                                                   
AAAE9DAAFAAAAEfAAA        102                                                   
AAAE9DAAFAAAAEfAAB        103                                                   
AAAE9DAAFAAAAEfAAC        104                                                   
AAAE9DAAFAAAAEfAAD        105                                                   

22 rows selected.

SQL> CREATE UNIQUE INDEX IX1 ON EMP(EMPNO);

Index created.

SQL> SELECT EMPNO,ENAME FROM EMP WHERE EMPNO=7788;

     EMPNO ENAME                                                                
---------- ----------                                                           
      7788 SCOTT                                                                

SQL> SET AUTOTRACE ON
SP2-0618: Cannot find the Session Identifier.  Check PLUSTRACE role is enabled
SP2-0611: Error enabling STATISTICS report
SQL> SELECT EMPNO,ENAME FROM EMP WHERE EMPNO=7788;

     EMPNO ENAME                                                                
---------- ----------                                                           
      7788 SCOTT                                                                


Execution Plan
----------------------------------------------------------                      
Plan hash value: 2839062643                                                     
                                                                                
--------------------------------------------------------------------------------
----                                                                            
                                                                                
| Id  | Operation                   | Name | Rows  | Bytes | Cost (%CPU)| Time  
   |                                                                            
                                                                                
--------------------------------------------------------------------------------
----                                                                            
                                                                                
|   0 | SELECT STATEMENT            |      |     1 |    20 |     1   (0)| 00:00:
01 |                                                                            
                                                                                
|   1 |  TABLE ACCESS BY INDEX ROWID| EMP  |     1 |    20 |     1   (0)| 00:00:
01 |                                                                            
                                                                                
|*  2 |   INDEX UNIQUE SCAN         | IX1  |     1 |       |     0   (0)| 00:00:
01 |                                                                            
                                                                                
--------------------------------------------------------------------------------
----                                                                            
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   2 - access("EMPNO"=7788)                                                     

SQL> SELECT EMPNO,ENAME FROM EMP WHERE ENAME='SCOTT';

     EMPNO ENAME                                                                
---------- ----------                                                           
      7788 SCOTT                                                                


Execution Plan
----------------------------------------------------------                      
Plan hash value: 3956160932                                                     
                                                                                
--------------------------------------------------------------------------      
| Id  | Operation         | Name | Rows  | Bytes | Cost (%CPU)| Time     |      
--------------------------------------------------------------------------      
|   0 | SELECT STATEMENT  |      |     1 |    20 |     3   (0)| 00:00:01 |      
|*  1 |  TABLE ACCESS FULL| EMP  |     1 |    20 |     3   (0)| 00:00:01 |      
--------------------------------------------------------------------------      
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   1 - filter("ENAME"='SCOTT')                                                  
                                                                                
Note                                                                            
-----                                                                           
   - dynamic sampling used for this statement (level=2)                         

SQL> SET AUTOTRACE OFF
SQL> SELECT EMPNO,ENAME FROM EMP WHERE ENAME='SCOTT';

     EMPNO ENAME                                                                
---------- ----------                                                           
      7788 SCOTT                                                                

SQL> SELECT EMPNO,ENAME FROM EMP WHERE EMPNO=7788;

     EMPNO ENAME                                                                
---------- ----------                                                           
      7788 SCOTT                                                                

SQL> EXIT

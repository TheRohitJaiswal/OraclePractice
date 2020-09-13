SQL> DECLARE
  2  CURSOR V_C1 IS SELEECT EMPNO FROM EMP;
  3  V_EMPNO EMP.EMPNO%TYPE;
  4  BEGIN
  5  OPEN V_C1;
  6  LOOP
  7  FETCH V_C1 INTO V_EMPNO;
  8  EXIT WHEN V_C1%NOTFOUND;
  9  DBMS_OUTPUT.PUT_LINE(V_EMPNO);
 10  END LOOP;
 11  CLOSE V_C1;
 12  END;
 13  /
CURSOR V_C1 IS SELEECT EMPNO FROM EMP;
               *
ERROR at line 2:
ORA-06550: line 2, column 16: 
PLS-00103: Encountered the symbol "SELEECT" when expecting one of the 
following: 
( select <a SQL statement> 
The symbol "select" was substituted for "SELEECT" to continue. 


SQL> DECLARE
  2  CURSOR V_C1 IS SELECT EMPNO FROM EMP;
  3  V_EMPNO EMP.EMPNO%TYPE;
  4  BEGIN
  5  OPEN V_C1;
  6  LOOP
  7  FETCH V_C1 INTO V_EMPNO;
  8  EXIT WHEN V_C1%NOTFOUND;
  9  DBMS_OUTPUT.PUT_LINE(V_EMPNO);
 10  END LOOP;
 11  CLOSE V_C1;
 12  END;
 13  /
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
7900                                                                            
7902                                                                            
7934                                                                            

PL/SQL procedure successfully completed.

SQL> DECLARE
  2  CURSOR V_C1 IS SELECT EMPNO,ENAME FROM EMP;
  3  V_EMPNO EMP.EMPNO%TYPE;
  4  V_ENAME EMP.ENAME%TYPE;
  5  BEGIN
  6  OPEN V_C1;
  7  LOOP
  8  FETCH V_C1 INTO V_EMPNO,V_ENAME;
  9  EXIT WHEN V_C1%NOTFOUND;
 10  DBMS_OUTPUT.PUT_LINE(V_EMPNO||' '||V_ENAME);
 11  END LOOP;
 12  CLOSE V_C1;
 13  END;
 14  /
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
7900 JAMES                                                                      
7902 FORD                                                                       
7934 MILLER                                                                     

PL/SQL procedure successfully completed.

SQL> DECLARE
  2  CURSOR V_C1 IS SELECT EMPNO,ENAME FROM EMP;
  3  V_EMPNO EMP.EMPNO%TYPE;
  4  V_ENAME EMP.ENAME%TYPE;
  5  V_SAL EMP.SAL%TYPE;
  6  BEGIN
  7  OPEN V_C1;
  8  LOOP
  9  FETCH V_C1 INTO V_EMPNO,V_ENAME,V_SAL;
 10  EXIT WHEN V_C1%NOTFOUND;
 11  DBMS_OUTPUT.PUT_LINE(V_EMPNO||' '||V_ENAME||' '||V_SAL);
 12  END LOOP;
 13  CLOSE V_C1;
 14  END;
 15  /
FETCH V_C1 INTO V_EMPNO,V_ENAME,V_SAL;
*
ERROR at line 9:
ORA-06550: line 9, column 1: 
PLS-00394: wrong number of values in the INTO list of a FETCH statement 
ORA-06550: line 9, column 1: 
PL/SQL: SQL Statement ignored 


SQL> DECLARE
  2  CURSOR V_C1 IS SELECT EMPNO,ENAME,SAL FROM EMP;
  3  V_EMPNO EMP.EMPNO%TYPE;
  4  V_ENAME EMP.ENAME%TYPE;
  5  V_SAL EMP.SAL%TYPE;
  6  BEGIN
  7  OPEN V_C1;
  8  LOOP
  9  FETCH V_C1 INTO V_EMPNO,V_ENAME,V_SAL;
 10  EXIT WHEN V_C1%NOTFOUND;
 11  DBMS_OUTPUT.PUT_LINE(V_EMPNO||' '||V_ENAME||' '||V_SAL);
 12  END LOOP;
 13  CLOSE V_C1;
 14  END;
 15  /
7369 SMITH 800                                                                  
7499 ALLEN 1600                                                                 
7521 WARD 1250                                                                  
7566 JONES 2975                                                                 
7654 MARTIN 1250                                                                
7698 BLAKE 2850                                                                 
7782 CLARK 2450                                                                 
7788 SCOTT 3000                                                                 
7839 KING 5000                                                                  
7844 TURNER 1500                                                                
7876 ADAMS 1100                                                                 
7900 JAMES 950                                                                  
7902 FORD 3000                                                                  
7934 MILLER 1300                                                                

PL/SQL procedure successfully completed.

SQL> DECLARE
  2  CURSOR V_C1 IS SELECT EMPNO,ENAME,SAL FROM EMP;
  3  V_REC V_C1%ROWTYPE;
  4  BEGIN
  5  OPEN V_C1;
  6  LOOP
  7  FETCH V_C1 INTO V_REC;
  8  EXIT WHEN V_C1%NOTFOUND;
  9  DBMS_OUTPUT.PUT_LINE(V_REC.EMPNO||' '||V_REC.ENAME||' '||V_REC.SAL);
 10  END LOOP;
 11  CLOSE V_C1;
 12  END;
 13  /
7369 SMITH 800                                                                  
7499 ALLEN 1600                                                                 
7521 WARD 1250                                                                  
7566 JONES 2975                                                                 
7654 MARTIN 1250                                                                
7698 BLAKE 2850                                                                 
7782 CLARK 2450                                                                 
7788 SCOTT 3000                                                                 
7839 KING 5000                                                                  
7844 TURNER 1500                                                                
7876 ADAMS 1100                                                                 
7900 JAMES 950                                                                  
7902 FORD 3000                                                                  
7934 MILLER 1300                                                                

PL/SQL procedure successfully completed.

SQL> DESC EMP_TEST
ERROR:
ORA-04043: object EMP_TEST does not exist 


SQL> CREATE TABLE EMP_TEST AS SELECT EMPNO,ENAME,SAL,DEPTNO FROM EMP WHERE 1=2;

Table created.

SQL> SELECT * FROM EMP_TEST;

no rows selected

SQL> DECLARE
  2  CURSOR V_C2(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT
  3  EMPNO,ENAME,SAL,DEPTNO FROM EMP WHERE DEPTNO=V_DEPTNO;
  4  V_REC V_C2%ROWTYPE;
  5  BEGIN
  6  OPEN V_C2(10);
  7  LOOP
  8  FETCH V_C2 INTO V_REC;
  9  EXIT WHEN V_C2%NOTFOUND;
 10  DBMS_OUTPUT.PUT_LINE(V_REC.EMPNO|| ' '||V_REC.ENAME||' '||V_REC.SAL||' '||V_REC.DEPTNO);
 11  END LOOP;
 12  CLOSE V_C2;
 13  OPEN V_C2(20);
 14  LOOP
 15  FETCH V_C2 INTO V_REC;
 16  EXIT WHEN V_C2%NOTFOUND;
 17  INSERT INTO EMP_TEST VALUES V_REC;
 18  END LOOP;
 19  CLOSE V_C2;
 20  END;
 21  /
7782 CLARK 2450 10                                                              
7839 KING 5000 10                                                               
7934 MILLER 1300 10                                                             

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP_TEST;

     EMPNO ENAME             SAL     DEPTNO                                     
---------- ---------- ---------- ----------                                     
      7369 SMITH             800         20                                     
      7566 JONES            2975         20                                     
      7788 SCOTT            3000         20                                     
      7876 ADAMS            1100         20                                     
      7902 FORD             3000         20                                     

SQL> ROLLBACK;

Rollback complete.

SQL> DECLARE
  2  CURSOR V_C2(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT
  3  EMPNO,ENAME,SAL,DEPTNO FROM EMP WHERE DEPTNO=V_DEPTNO;
  4  V_REC V_C2%ROWTYPE;
  5  BEGIN
  6  FOR V_REC IN V_C2(10) LOOP
  7  DBMS_OUTPUT.PUT_LINE(V_REC.EMPNO|| ' '||V_REC.ENAME||' '||V_REC.SAL||' '||V_REC.DEPTNO);
  8  END LOOP;
  9  FOR V_REC IN V_C2(20) LOOP
 10  INSERT INTO EMP_TEST VALUES V_REC;
 11  END LOOP;
 12  END;
 13  /
7782 CLARK 2450 10                                                              
7839 KING 5000 10                                                               
7934 MILLER 1300 10                                                             

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP_TEST;

     EMPNO ENAME             SAL     DEPTNO                                     
---------- ---------- ---------- ----------                                     
      7369 SMITH             800         20                                     
      7566 JONES            2975         20                                     
      7788 SCOTT            3000         20                                     
      7876 ADAMS            1100         20                                     
      7902 FORD             3000         20                                     

SQL> ROLLBACK
  2  ;

Rollback complete.

SQL> SELECT * FROM EMP_TEST;

no rows selected

SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*10/100 WHERE CURRENT OF V_C3;
  8  END LOOP;
  9  END;
 10  /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP
UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*10/100 WHERE CURRENT OF V_C3;
                                                               *
ERROR at line 7:
ORA-06550: line 7, column 64: 
PLS-00404: cursor 'V_C3' must be declared with FOR UPDATE to use with CURRENT 
OF 
ORA-06550: line 7, column 64: 
PL/SQL: ORA-00904: : invalid identifier 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 


SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*10/100 WHERE EMPNO=V_REC.EMPNO;
  8  END LOOP;
  9  END;
 10  /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP_TEST;

     EMPNO ENAME             SAL     DEPTNO                                     
---------- ---------- ---------- ----------                                     
      7782 CLARK            2450         10                                     
      7839 KING             5000         10                                     
      7934 MILLER           1300         10                                     

SQL> SELECT * FROM EMP WHERE DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2695                 
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            17-NOV-81       5500                 
        10                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1430                 
        10                                                                      
                                                                                

SQL> ROLLBACK;

Rollback complete.

SQL> grant all on emp to wipro;

Grant succeeded.

SQL> show user
USER is "SCOTT"
SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE EMPNO=V_REC.EMPNO;
  8  END LOOP;
  9  END;
 10  /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP

PL/SQL procedure successfully completed.

SQL> ROLLBACK;

Rollback complete.

SQL> SELECT * FROM EMP FOR UPDATE;

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

SQL> ROLLBACK;

Rollback complete.

SQL> SELECT * FROM EMP FOR UPDATE NOWAIT;
SELECT * FROM EMP FOR UPDATE NOWAIT
              *
ERROR at line 1:
ORA-00054: resource busy and acquire with NOWAIT specified or timeout expired 


SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO FOR UPDATE NOWAIT;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE EMPNO=V_REC.EMPNO;
  8  END LOOP;
  9  END;
 10  /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP
DECLARE
*
ERROR at line 1:
ORA-00054: resource busy and acquire with NOWAIT specified or timeout expired 
ORA-06512: at line 2 
ORA-06512: at line 5 


SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO FOR UPDATE WAIT 20;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE EMPNO=V_REC.EMPNO;
  8  END LOOP;
  9  COMMIT;
 10  END;
 11  /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP
DECLARE
*
ERROR at line 1:
ORA-30006: resource busy; acquire with WAIT timeout expired 
ORA-06512: at line 2 
ORA-06512: at line 5 


SQL> /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP

PL/SQL procedure successfully completed.

SQL> SHOW USER
USER is "SCOTT"
SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO FOR UPDATE WAIT 20;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE CURRENT OF V_C3;
  8  END LOOP;
  9  COMMIT;
 10  END;
 11  /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP_TEST;

     EMPNO ENAME             SAL     DEPTNO                                     
---------- ---------- ---------- ----------                                     
      7782 CLARK            2450         10                                     
      7839 KING             5000         10                                     
      7934 MILLER           1300         10                                     
      7782 CLARK          2817.5         10                                     
      7839 KING             5750         10                                     
      7934 MILLER           1495         10                                     

6 rows selected.

SQL> DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO FOR UPDATE WAIT 20;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE CURRENT OF V_C3;
  8  END LOOP;
  9  COMMIT;
 10  END;
 11  .
SQL> RF
SP2-0042: unknown command "RF" - rest of line ignored.
SQL> D
SP2-0042: unknown command "D" - rest of line ignored.
SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C3(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL,DEPTNO
  3  FROM EMP WHERE DEPTNO=V_DEPTNO;
  4  BEGIN
  5  FOR V_REC IN V_C3(&NO) LOOP
  6  INSERT INTO EMP_TEST VALUES V_REC;
  7  UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE CURRENT OF V_C3;
  8  END LOOP;
  9  COMMIT;
 10* END;
SQL> /
Enter value for no: 10
old   5: FOR V_REC IN V_C3(&NO) LOOP
new   5: FOR V_REC IN V_C3(10) LOOP
UPDATE EMP SET SAL=V_REC.SAL+V_REC.SAL*15/100 WHERE CURRENT OF V_C3;
                                                               *
ERROR at line 7:
ORA-06550: line 7, column 64: 
PLS-00404: cursor 'V_C3' must be declared with FOR UPDATE to use with CURRENT 
OF 
ORA-06550: line 7, column 64: 
PL/SQL: ORA-00904: : invalid identifier 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 


SQL> exit

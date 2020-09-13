SQL> variable cnt number;
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_job varchar2(20);
  3  begin
  4  v_job := '&job';
  5  delete from emp where job = v_job;
  6  :cnt := sql%rowcount;
  7* end;
SQL> ROLLBACK
  2  ;

Rollback complete.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

14 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  declare
  2  v_job varchar2(20);
  3  begin
  4  v_job := '&job';
  5  delete from emp where job = v_job;
  6  :cnt := sql%rowcount;
  7* end;
SQL> /
Enter value for job: CLERK
old   4: v_job := '&job';
new   4: v_job := 'CLERK';

PL/SQL procedure successfully completed.

SQL> PRINT :CNT;

       CNT                                                                                                                                                                                              
----------                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                                                                                                   

10 rows selected.

SQL> ROLLBACK;

Rollback complete.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE 
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT ENAME,SAL FROM EMP WHERE DEPTNO= V_DEPTNO;
  3  V_EMP V_C1%ROWTYPE;
  4  BEGIN
  5  FOR V_EMP IN V_C1(20) LOOP
  6  IF V_EMP.SAL<1500 THEN
  7  DBMS_OUTPUT.PUT_LINE(V_EMP.ENAME||' DUE FOR SALARY');
  8  ELSE
  9  DBMS_OUTPUT.PUT_LINE(V_EMP.ENAME||' NOT DUE FOR SALARY');
 10  END LOOP;
 11* END;
SQL> /
END LOOP;
    *
ERROR at line 10:
ORA-06550: line 10, column 5: 
PLS-00103: Encountered the symbol "LOOP" when expecting one of the following: 
if 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE 
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT ENAME,SAL FROM EMP WHERE DEPTNO= V_DEPTNO;
  3  V_EMP V_C1%ROWTYPE;
  4  BEGIN
  5  FOR V_EMP IN V_C1(20) LOOP
  6  IF V_EMP.SAL<1500 THEN
  7  DBMS_OUTPUT.PUT_LINE(V_EMP.ENAME||' DUE FOR SALARY');
  8  ELSE
  9  DBMS_OUTPUT.PUT_LINE(V_EMP.ENAME||' NOT DUE FOR SALARY');
 10  END IF;
 11  END LOOP;
 12* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT ON
SQL> /
JONES NOT DUE FOR SALARY                                                                                                                                                                                
FORD NOT DUE FOR SALARY                                                                                                                                                                                 
SMITH DUE FOR SALARY                                                                                                                                                                                    
SCOTT NOT DUE FOR SALARY                                                                                                                                                                                
ADAMS DUE FOR SALARY                                                                                                                                                                                    

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

14 rows selected.

SQL> ED
Wrote file afiedt.buf

  1* SELECT * FROM EMP
SQL> ;
  1* SELECT * FROM EMP
SQL> 
SQL> 
SQL> ALTER TABLE EMP ADD COLUMN STAR VARCHAR2(20);
ALTER TABLE EMP ADD COLUMN STAR VARCHAR2(20)
                    *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE EMP ADD STAR VARCHAR2(20);

Table altered.

SQL> DESC EMP;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 EMPNO                                                                                                             NOT NULL NUMBER(4)
 ENAME                                                                                                                      VARCHAR2(10)
 JOB                                                                                                                        VARCHAR2(9)
 MGR                                                                                                                        NUMBER(4)
 HIREDATE                                                                                                                   DATE
 SAL                                                                                                                        NUMBER(7,2)
 COMM                                                                                                                       NUMBER(7,2)
 DEPTNO                                                                                                            NOT NULL NUMBER(2)
 STAR                                                                                                                       VARCHAR2(20)

SQL> ED
Wrote file afiedt.buf

  1  DECLARE 
  2  CURSOR V_C2(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT SAL,STAR FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3  V_EMP V_C2%ROWTYPE;
  4  V_QUO NUMBER;
  5  BEGIN
  6  FOR V_EMP IN V_C2(20) LOOP
  7  V_QUO := V_EMP.SAL/1000;
  8  UPDATE EMP SET STAR = TO_CHAR(RPAD('*',V_QUO)) WHERE CURRENT OF V_C2;
  9  END LOOP;
 10* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20 *                                                                                                                 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 *                                                                                                                 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20 *                                                                                                                 
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20 *                                                                                                                 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

14 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR V_C2(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT SAL,STAR FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3    V_EMP V_C2%ROWTYPE;
  4    V_QUO NUMBER;
  5    BEGIN
  6    FOR V_EMP IN V_C2(20) LOOP
  7    V_QUO := V_EMP.SAL/1000;
  8    UPDATE EMP SET STAR = TO_CHAR(RPAD('*',V_QUO)) WHERE CURRENT OF V_C2;
  9    END LOOP;
 10*  END;
SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR V_C2(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT SAL,STAR FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3    V_EMP V_C2%ROWTYPE;
  4    V_QUO NUMBER;
  5    BEGIN
  6    FOR V_EMP IN V_C2(20) LOOP
  7    V_QUO := V_EMP.SAL/1000;
  8    UPDATE EMP SET STAR = TO_CHAR(RPAD('*',V_QUO,'*')) WHERE CURRENT OF V_C2;
  9    END LOOP;
 10*  END;
SQL> /

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20 **                                                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 ***                                                                                                               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20 ***                                                                                                               
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20 *                                                                                                                 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

14 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  TYPE T1 IS REF CURSOR;
  3  V_C1 T1;
  4  CHOICE INTEGER;
  5  V_ENAME EMP.ENAME%TYPE;
  6  BEGIN
  7  CHOICE := &CHOICE;
  8  IF CHOICE = 1 THEN
  9  OPEN V_C1 FOR SELECT ENAME FROM EMP WHERE SAL > 2000;
 10  LOOP
 11  FETCH V_C1 INTO V_ENAME;
 12  EXIT WHEN V_C1%NOTFOUND;
 13  DBMS_OUTPUT.PUT_LINE(V_ENAME);
 14  END LOOP;
 15  ELSE
 16  OPEN V_C1 FOR SELECT ENAME FOR EMP WHERE SAL < 2000;
 17  LOOP 
 18  FETCH V_C1 INTO V_ENAME;
 19  EXIT WHEN V_C1%NOTFOUND;
 20  DBMS_OUTPUT.PUT_LINE(V_ENAME);
 21  END LOOP;
 22  END IF;
 23* END;
SQL> /
Enter value for choice: 1
old   7: CHOICE := &CHOICE;
new   7: CHOICE := 1;
OPEN V_C1 FOR SELECT ENAME FOR EMP WHERE SAL < 2000;
                           *
ERROR at line 16:
ORA-06550: line 16, column 28: 
PL/SQL: ORA-00923: FROM keyword not found where expected 
ORA-06550: line 16, column 15: 
PL/SQL: SQL Statement ignored 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  TYPE T1 IS REF CURSOR;
  3  V_C1 T1;
  4  CHOICE INTEGER;
  5  V_ENAME EMP.ENAME%TYPE;
  6  BEGIN
  7  CHOICE := &CHOICE;
  8  IF CHOICE = 1 THEN
  9  OPEN V_C1 FOR SELECT ENAME FROM EMP WHERE SAL > 2000;
 10  LOOP
 11  FETCH V_C1 INTO V_ENAME;
 12  EXIT WHEN V_C1%NOTFOUND;
 13  DBMS_OUTPUT.PUT_LINE(V_ENAME);
 14  END LOOP;
 15  ELSE
 16  OPEN V_C1 FOR SELECT ENAME FROM EMP WHERE SAL < 2000;
 17  LOOP 
 18  FETCH V_C1 INTO V_ENAME;
 19  EXIT WHEN V_C1%NOTFOUND;
 20  DBMS_OUTPUT.PUT_LINE(V_ENAME);
 21  END LOOP;
 22  END IF;
 23* END;
SQL> /
Enter value for choice: 1
old   7: CHOICE := &CHOICE;
new   7: CHOICE := 1;
KING                                                                                                                                                                                                    
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
JONES                                                                                                                                                                                                   
FORD                                                                                                                                                                                                    
SCOTT                                                                                                                                                                                                   

PL/SQL procedure successfully completed.

SQL> /
Enter value for choice: 3
old   7: CHOICE := &CHOICE;
new   7: CHOICE := 3;
MARTIN                                                                                                                                                                                                  
ALLEN                                                                                                                                                                                                   
TURNER                                                                                                                                                                                                  
JAMES                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
SMITH                                                                                                                                                                                                   
ADAMS                                                                                                                                                                                                   
MILLER                                                                                                                                                                                                  

PL/SQL procedure successfully completed.

SQL> SPOOL OFF

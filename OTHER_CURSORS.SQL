SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C1(V_JOB EMP.JOB%TYPE) IS SELECT JOB, SAL FROM EMP WHERE SAL > 1000 AND JOB = V_JOB FOR UPDATE NOWAIT;
  3  V_EMP V_C1%ROWTYPE;
  4  BEGIN
  5  FOR V_EMP IN V_C1('CLERK') LOOP
  6  UPDATE EMP SET JOB = 'SR CLERK', SAL = SAL+SAL*0.1 WHERE CURRENT OF V_C1;
  7  END LOOP;
  8* END;
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
      7876 ADAMS      SR CLERK        7788 12-JAN-83       1210                    20 *                                                                                                                 
      7934 MILLER     SR CLERK        7782 23-JAN-82       1430                    10                                                                                                                   

14 rows selected.

SQL> ROLLBACK;

Rollback complete.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
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

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

14 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3  BEGIN
  4  FOR V_EMP IN V_C1(10) LOOP 
  5  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
  6  END LOOP;
  7* FOR V_EMP IN V_C1(
SQL> .
SQL> SELECT TEXT FROM USER_SOURCES;
SELECT TEXT FROM USER_SOURCES
                 *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT TEXT FROM USER_SOURCE;

no rows selected

SQL> SELECT TEXT FROM USER_SOURCE WHERE NAME = 'V_C1';

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3  CURSOR V_C2 IS SELECT ENAME, SAL, DEPTNO FROM EMP FOR UPDATE NOWAIT;
  4  BEGIN
  5  FOR V_EMP IN V_C1(10) LOOP 
  6  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
  7  END LOOP;
  8  FOR V_EMP IN V_C1(20) LOOP
  9  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
 10  END LOOP;
 11  FOR V_REC IN V_C2 LOOP
 12  IF V_REC.DEPTNO <> 10 AND V_REC.DEPTNO <> 20 THEN
 13  UPDATE EMP SET SAL = SAL+SAL*0.05 WHERE CURRENT OF V_C2;
 14  END IF;
 15  END LOOP;
 16* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3  CURSOR V_C2 IS SELECT ENAME, SAL, DEPTNO FROM EMP FOR UPDATE NOWAIT;
  4  BEGIN
  5  FOR V_EMP IN V_C1(10) LOOP 
  6  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
  7  END LOOP;
  8  FOR V_EMP IN V_C1(20) LOOP
  9  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
 10  END LOOP;
 11  FOR V_REC IN V_C2 LOOP
 12  IF V_REC.DEPTNO <> 10 AND V_REC.DEPTNO <> 20 THEN
 13  UPDATE EMP SET SAL = SAL+SAL*0.05 WHERE CURRENT OF V_C2;
 14  END IF;
 15  END LOOP;
 16* END;
SQL> .
SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7839 KING       PRESIDENT            17-NOV-81       5750                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81     2992.5                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81     2817.5                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81    3421.25                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81     1312.5       1400         30                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1680        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1575          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81      997.5                    30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81     1312.5        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3450                    20                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        920                    20                                                                                                                   

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7788 SCOTT      ANALYST         7566 09-DEC-82       3450                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1265                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1495                    10                                                                                                                   

14 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_DEPTNO EMP.DEPTNO%TYPE;
  3  V_DNAME DEPT.DNAME%TYPE;
  4  BEGIN 
  5  V_DEPTNO:=&DEPTNO;
  6  SELECT DNAME INTO V_DNAME FROM DEPT WHERE DEPTNO = V_DEPTNO;
  7  DBMS_OUTPUT.PUT_LINE(V_DNAME);
  8  EXCEPTION
  9  WHEN NO_DATA_FOUND THEN
 10  RAISE_APPLICATION_ERROR(-20001, 'DEPTNO DOES NOT EXISTS');
 11* END;
SQL> /
Enter value for deptno: 10
old   5: V_DEPTNO:=&DEPTNO;
new   5: V_DEPTNO:=10;
ACCOUNTING                                                                                                                                                                                              

PL/SQL procedure successfully completed.

SQL> /
Enter value for deptno: 50
old   5: V_DEPTNO:=&DEPTNO;
new   5: V_DEPTNO:=50;
DECLARE
*
ERROR at line 1:
ORA-20001: DEPTNO DOES NOT EXISTS 
ORA-06512: at line 10 


SQL> CREATE OR REPLACE TABLE STOCK
  2  (PNO INTEGER CONSTRAINTS STOCK_PNO_PK PRIMARY KEY,
  3  PNAME VARCHAR2(20) CONSTRAINTS STOCK_PNAME_NN NOT NULL);
CREATE OR REPLACE TABLE STOCK
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> CREATE TABLE STOCK
  2  (PNO INTEGER CONSTRAINTS STOCK_PNO_PK PRIMARY KEY,
  3  PNAME VARCHAR2(20) CONSTRAINTS STOCK_PNAME_NN NOT NULL);

Table created.

SQL> DROP TABLE STOCK;

Table dropped.

SQL> CREATE TABLE STOCK
  2  (PNO INTEGER CONSTRAINTS STOCK_PNO_PK PRIMARY KEY,
  3  PNAME VARCHAR2(20) CONSTRAINTS STOCK_PNAME_NN NOT NULL,
  4  QTY INTEGER CONSTRAINTS STOCK_QTY_NN NOT NULL,
  5  RATE INTEGER CONSTRAINTS STOCK_RATE_NN NOT NULL);

Table created.

SQL> INSERT INTO STOCK VALUES(101, 'X',100,20);

1 row created.

SQL> INSERT INTO STOCK VALUES(102, 'Y',0,50);

1 row created.

SQL> INSERT INTO STOCK VALUES(103, 'Z',1000,20);

1 row created.

SQL> CREATE TABLE RATIO1
  2  (PNO INTEGER, RT NUMBER(10,2));

Table created.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE 
  2  V_STOCK STOCK%ROWTYPE;
  3  V_CAL NUMBER(10,2);
  4  BEGIN
  5  V_STOCK.PNO := &PNO;
  6  SELECT PNAME, QTY, RATE INTO V_STOCK FROM STOCK WHERE PNO = V_STOCK.PNO;
  7  IF V_STOCK.QTY>0 THEN
  8  V_CAL := V_STOCK.RATE/V_STOCK.QTY;
  9  INSERT INTO RATIO1 VALUES(V_STOCK.PNO, V_CAL);
 10  ELSE
 11  INSERT INTO RATIO1 VALUES(V_STOCK.PNO, NULL);
 12  END IF;
 13* END;
SQL> /
Enter value for pno: 101
old   5: V_STOCK.PNO := &PNO;
new   5: V_STOCK.PNO := 101;
SELECT PNAME, QTY, RATE INTO V_STOCK FROM STOCK WHERE PNO = V_STOCK.PNO;
                                     *
ERROR at line 6:
ORA-06550: line 6, column 38: 
PL/SQL: ORA-00913: too many values 
ORA-06550: line 6, column 1: 
PL/SQL: SQL Statement ignored 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE 
  2  V_STOCK STOCK%ROWTYPE;
  3  V_CAL NUMBER(10,2);
  4  BEGIN
  5  V_STOCK.PNO := &PNO;
  6  SELECT PNO, PNAME, QTY, RATE INTO V_STOCK FROM STOCK WHERE PNO = V_STOCK.PNO;
  7  IF V_STOCK.QTY>0 THEN
  8  V_CAL := V_STOCK.RATE/V_STOCK.QTY;
  9  INSERT INTO RATIO1 VALUES(V_STOCK.PNO, V_CAL);
 10  ELSE
 11  INSERT INTO RATIO1 VALUES(V_STOCK.PNO, NULL);
 12  END IF;
 13* END;
SQL> /
Enter value for pno: 101
old   5: V_STOCK.PNO := &PNO;
new   5: V_STOCK.PNO := 101;

PL/SQL procedure successfully completed.

SQL> /
Enter value for pno: 102
old   5: V_STOCK.PNO := &PNO;
new   5: V_STOCK.PNO := 102;

PL/SQL procedure successfully completed.

SQL> SELECT * FROM RATIO1;

       PNO         RT                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       101         .2                                                                                                                                                                                   
       102                                                                                                                                                                                              

SQL> CREATE TABLE MESSAGES(RESULT VARCHAR2(1000));

Table created.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_SAL EMP.SAL%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  BEGIN
  5  V_SAL := &SAL;
  6  SELECT ENAME INTO V_ENAME FROM EMP WHERE SAL = V_SAL;
  7  INSERT INTO MESSAGES VALUES(ENAME||' '||SAL);
  8  EXCEPTION
  9  WHEN TOO_MANY_ROWS THEN
 10  INSERT INTO MESSAGES VALUES('MORE THAN ONE ROW WITH A SALARY '||SAL);
 11  WHEN NO_DATA_FOUND THEN 
 12  INSERT INTO MESSAGES VALUES('NO EMPLOYEE WITH THAT SALARY '||SAL);
 13  WHEN OTHERS THEN 
 14  INSERT INTO MESSAGES VALUES('OTHER ERROR');
 15* END;
SQL> .
SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_SAL EMP.SAL%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  BEGIN
  5  V_SAL := &SAL;
  6  SELECT ENAME INTO V_ENAME FROM EMP WHERE SAL = V_SAL;
  7  INSERT INTO MESSAGES VALUES(ENAME||' '||SAL);
  8  EXCEPTION
  9  WHEN TOO_MANY_ROWS THEN
 10  INSERT INTO MESSAGES VALUES('MORE THAN ONE ROW WITH A SALARY '||SAL);
 11  WHEN NO_DATA_FOUND THEN 
 12  INSERT INTO MESSAGES VALUES('NO EMPLOYEE WITH THAT SALARY '||SAL);
 13  WHEN OTHERS THEN 
 14  INSERT INTO MESSAGES VALUES('OTHER ERROR');
 15* END;
SQL> /
Enter value for sal: 3450
old   5: V_SAL := &SAL;
new   5: V_SAL := 3450;
INSERT INTO MESSAGES VALUES(ENAME||' '||SAL);
                                        *
ERROR at line 7:
ORA-06550: line 7, column 41: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 10, column 65: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 10, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 12, column 62: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 12, column 1: 
PL/SQL: SQL Statement ignored 


SQL> EDD
SP2-0042: unknown command "EDD" - rest of line ignored.
SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_SAL EMP.SAL%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  BEGIN
  5  V_SAL := &SAL;
  6  SELECT ENAME INTO V_ENAME FROM EMP WHERE SAL = V_SAL;
  7  INSERT INTO MESSAGES VALUES(ENAME||' '||TO_CHAR(SAL));
  8  EXCEPTION
  9  WHEN TOO_MANY_ROWS THEN
 10  INSERT INTO MESSAGES VALUES('MORE THAN ONE ROW WITH A SALARY '||TO_CHAR(SAL));
 11  WHEN NO_DATA_FOUND THEN 
 12  INSERT INTO MESSAGES VALUES('NO EMPLOYEE WITH THAT SALARY '||TO_CHAR(SAL));
 13  WHEN OTHERS THEN 
 14  INSERT INTO MESSAGES VALUES('OTHER ERROR');
 15* END;
SQL> /
Enter value for sal: 3450
old   5: V_SAL := &SAL;
new   5: V_SAL := 3450;
INSERT INTO MESSAGES VALUES(ENAME||' '||TO_CHAR(SAL));
                                                *
ERROR at line 7:
ORA-06550: line 7, column 49: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 10, column 73: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 10, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 12, column 70: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 12, column 1: 
PL/SQL: SQL Statement ignored 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_SAL EMP.SAL%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  BEGIN
  5  V_SAL := &SAL;
  6  SELECT ENAME INTO V_ENAME FROM EMP WHERE SAL = V_SAL;
  7  INSERT INTO MESSAGES VALUES(ENAME||' '||TO_CHAR(SAL));
  8  EXCEPTION
  9  WHEN TOO_MANY_ROWS THEN
 10  INSERT INTO MESSAGES VALUES('MORE THAN ONE ROW WITH A SALARY '||TO_CHAR(SAL));
 11  WHEN NO_DATA_FOUND THEN 
 12  INSERT INTO MESSAGES VALUES('NO EMPLOYEE WITH THAT SALARY '||TO_CHAR(SAL));
 13  WHEN OTHERS THEN 
 14  INSERT INTO MESSAGES VALUES('OTHER ERROR');
 15* END;
SQL> SELECT TO_CHAR(ENAME||' '||SAL) FROM EMP WHERE EMPNO = 7788;

TO_CHAR(ENAME||''||SAL)                                                                                                                                                                                 
---------------------------------------------------                                                                                                                                                     
SCOTT 3450                                                                                                                                                                                              

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_SAL EMP.SAL%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  BEGIN
  5  V_SAL := &SAL;
  6  SELECT ENAME INTO V_ENAME FROM EMP WHERE SAL = V_SAL;
  7  INSERT INTO MESSAGES VALUES(TO_CHAR(ENAME||' '||SAL));
  8  EXCEPTION
  9  WHEN TOO_MANY_ROWS THEN
 10  INSERT INTO MESSAGES VALUES(TO_CHAR('MORE THAN ONE ROW WITH A SALARY '||SAL));
 11  WHEN NO_DATA_FOUND THEN 
 12  INSERT INTO MESSAGES VALUES(TO_CHAR('NO EMPLOYEE WITH THAT SALARY '||SAL));
 13  WHEN OTHERS THEN 
 14  INSERT INTO MESSAGES VALUES('OTHER ERROR');
 15* END;
SQL> /
Enter value for sal: 3450
old   5: V_SAL := &SAL;
new   5: V_SAL := 3450;
INSERT INTO MESSAGES VALUES(TO_CHAR(ENAME||' '||SAL));
                                                *
ERROR at line 7:
ORA-06550: line 7, column 49: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 10, column 73: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 10, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 12, column 70: 
PL/SQL: ORA-00984: column not allowed here 
ORA-06550: line 12, column 1: 
PL/SQL: SQL Statement ignored 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_SAL EMP.SAL%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  BEGIN
  5  V_SAL := &SAL;
  6  SELECT ENAME INTO V_ENAME FROM EMP WHERE SAL = V_SAL;
  7  INSERT INTO MESSAGES VALUES(TO_CHAR(V_ENAME||' '||V_SAL));
  8  EXCEPTION
  9  WHEN TOO_MANY_ROWS THEN
 10  INSERT INTO MESSAGES VALUES(TO_CHAR('MORE THAN ONE ROW WITH A SALARY '||V_SAL));
 11  WHEN NO_DATA_FOUND THEN 
 12  INSERT INTO MESSAGES VALUES(TO_CHAR('NO EMPLOYEE WITH THAT SALARY '||V_SAL));
 13  WHEN OTHERS THEN 
 14  INSERT INTO MESSAGES VALUES('OTHER ERROR');
 15* END;
SQL> /
Enter value for sal: 3450
old   5: V_SAL := &SAL;
new   5: V_SAL := 3450;

PL/SQL procedure successfully completed.

SQL> /
Enter value for sal: 3300
old   5: V_SAL := &SAL;
new   5: V_SAL := 3300;

PL/SQL procedure successfully completed.

SQL> /
Enter value for sal: 1250
old   5: V_SAL := &SAL;
new   5: V_SAL := 1250;

PL/SQL procedure successfully completed.

SQL> SELECT * FROM MESSAGES;

RESULT                                                                                                                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
MORE THAN ONE ROW WITH A SALARY 3450                                                                                                                                                                    
NO EMPLOYEE WITH THAT SALARY 3300                                                                                                                                                                       
NO EMPLOYEE WITH THAT SALARY 1250                                                                                                                                                                       

SQL> SPOOL OFF

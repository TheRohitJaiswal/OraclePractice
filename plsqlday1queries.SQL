SQL> L
  1  DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_SAL EMP.SAL%TYPE;
  4  BEGIN
  5  V_EMPNO:=&EMPNO;
  6  SELECT SAL INTO V_SAL FROM EMP WHERE EMPNO=V_EMPNO
  7  DBMS_OUTPUT.PUT_LINE('THE SALARY IS '||V_SAL);
  8* END;
SQL> /
Enter value for empno: 7788
old   5: V_EMPNO:=&EMPNO;
new   5: V_EMPNO:=7788;
DBMS_OUTPUT.PUT_LINE('THE SALARY IS '||V_SAL);
*
ERROR at line 7:
ORA-06550: line 6, column 52: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 6, column 1: 
PL/SQL: SQL Statement ignored 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_SAL EMP.SAL%TYPE;
  4  BEGIN
  5  V_EMPNO:=&EMPNO;
  6  SELECT SAL INTO V_SAL FROM EMP WHERE EMPNO=V_EMPNO;
  7  DBMS_OUTPUT.PUT_LINE('THE SALARY IS '||V_SAL);
  8* END;
SQL> /
Enter value for empno: 7788
old   5: V_EMPNO:=&EMPNO;
new   5: V_EMPNO:=7788;
THE SALARY IS 3000                                                              

PL/SQL procedure successfully completed.

SQL> DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_SAL EMP.SAL%TYPE;
  4  V_ENAME EMP.ENAME%TYPE;
  5  BEGIN
  6  V_EMPNO:=&EMPNO;
  7  SELECT SAL,ENAME INTO V_SAL,V_ENAME FROM EMP WHERE EMPNO=V_EMPNO;
  8  DBMS_OUTPUT.PUT_LINE(V_ENAME||' '||V_SAL);
  9  END;
 10  /
Enter value for empno: 7788
old   6: V_EMPNO:=&EMPNO;
new   6: V_EMPNO:=7788;
SCOTT 3000                                                                      

PL/SQL procedure successfully completed.

SQL> DECLARE
  2  V_REC EMP%ROWTYPE;
  3  BEGIN
  4  V_REC,EMPNO:=&EMPNO;
  5  SELECT * INTO V_REC FROM EMP WHERE EMPNO=V_REC.EMPNO;
  6  DBMS_OUTPUT.PUT_LINE(V_REC.ENAME||' '||V_REC.JOB||' '||V_REC.SAL);
  7  END;
  8  /
Enter value for empno: 7788
old   4: V_REC,EMPNO:=&EMPNO;
new   4: V_REC,EMPNO:=7788;
V_REC,EMPNO:=7788;
     *
ERROR at line 4:
ORA-06550: line 4, column 6: 
PLS-00103: Encountered the symbol "," when expecting one of the following: 
:= . ( @ % ; 
The symbol ". was inserted before "," to continue. 


SQL> DECLARE
  2  V_REC EMP%ROWTYPE;
  3  BEGIN
  4  V_REC.EMPNO:=&EMPNO;
  5  SELECT * INTO V_REC FROM EMP WHERE EMPNO=V_REC.EMPNO;
  6  DBMS_OUTPUT.PUT_LINE(V_REC.ENAME||' '||V_REC.JOB||' '||V_REC.SAL);
  7  END;
  8  /
Enter value for empno: 7788
old   4: V_REC.EMPNO:=&EMPNO;
new   4: V_REC.EMPNO:=7788;
SCOTT ANALYST 3000                                                              

PL/SQL procedure successfully completed.

SQL> /
Enter value for empno: 88
old   4: V_REC.EMPNO:=&EMPNO;
new   4: V_REC.EMPNO:=88;
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 5 


SQL> SELECT COUNT(*) FROM EMP;

  COUNT(*)                                                                      
----------                                                                      
        14                                                                      

SQL> SELECT COUNT(*) FROM EMP WHERE EMPNO=7788;

  COUNT(*)                                                                      
----------                                                                      
         1                                                                      

SQL> SELECT COUNT(*) FROM EMP WHERE EMPNO=77;

  COUNT(*)                                                                      
----------                                                                      
         0                                                                      

SQL> DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  V_SAL EMP.SAL%TYPE;
  5  V_COUNT BINARY_INTEGER;
  6  BEGIN
  7  V_EMPNO:=&EMPNO;
  8  V_ENAME:='&ENAME';
  9  V_SAL:=&SAL;
 10  SELECT COUNT(*) INTO V_COUNT FROM EMP WHERE EMPNO=V_EMPNO;
 11  IF V_COUNT=0 THEN
 12    INSERT INTO EMP(EMPNO,ENAME,SAL) VALUES(V_EMPNO,V_ENAME,V_SAL);
 13    DBMS_OUTPUT.PUT_LINE('REC INSERTED');
 14  ELSE
 15    UPDATE EMP SET ENAME=V_ENAME,SAL=V_SAL WHERE EMPNO=V_EMPNO;
 16      DBMS_OUTPUT.PUT_LINE('REC UPDATED');
 17    END IF;
 18   COMMIT;
 19  END;
 20  /
Enter value for empno: 77
old   7: V_EMPNO:=&EMPNO;
new   7: V_EMPNO:=77;
Enter value for ename: MARY
old   8: V_ENAME:='&ENAME';
new   8: V_ENAME:='MARY';
Enter value for sal: 4000
old   9: V_SAL:=&SAL;
new   9: V_SAL:=4000;
REC INSERTED                                                                    

PL/SQL procedure successfully completed.

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
                                                                                
        77 MARY                                            4000                 
                                                                                
                                                                                

15 rows selected.

SQL> DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_ENAME EMP.ENAME%TYPE;
  4  V_SAL EMP.SAL%TYPE;
  5  V_COUNT BINARY_INTEGER;
  6  BEGIN
  7  V_EMPNO:=&EMPNO;
  8  V_ENAME:='&ENAME';
  9  V_SAL:=&SAL;
 10  SELECT COUNT(*) INTO V_COUNT FROM EMP WHERE EMPNO=V_EMPNO;
 11  IF V_COUNT=0 THEN
 12    INSERT INTO EMP(EMPNO,ENAME,SAL) VALUES(V_EMPNO,V_ENAME,V_SAL);
 13    DBMS_OUTPUT.PUT_LINE('REC INSERTED');
 14  ELSE
 15    UPDATE EMP SET ENAME=V_ENAME,SAL=V_SAL WHERE EMPNO=V_EMPNO;
 16      DBMS_OUTPUT.PUT_LINE('REC UPDATED');
 17    END IF;
 18   COMMIT;
 19  END;
 20  /
Enter value for empno: 77
old   7: V_EMPNO:=&EMPNO;
new   7: V_EMPNO:=77;
Enter value for ename: GARY
old   8: V_ENAME:='&ENAME';
new   8: V_ENAME:='GARY';
Enter value for sal: 4500
old   9: V_SAL:=&SAL;
new   9: V_SAL:=4500;
REC UPDATED                                                                     

PL/SQL procedure successfully completed.

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
                                                                                
        77 GARY                                            4500                 
                                                                                
                                                                                

15 rows selected.

SQL> DESC EMP
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_SAL EMP.SAL%TYPE;
  4  V_DEPTNO EMP.DEPTNO%TYPE;
  5  BEGIN
  6  V_EMPNO:=&EMPNO;
  7  SELECT DEPTNO,SAL INTO V_DEPTNO,V_SAL FROM EMP WHERE EMPNO=V_EMPNO;
  8   IF V_DEPTNO=10 THEN
  9     V_SAL:=V_SAL+V_SAL*10/100;
 10   ELSIF V_DEPTNO=20 THEN
 11    V_SAL:=V_SAL+V_SAL*15/100;
 12   ELSE
 13  V_SAL:=V_SAL+V_SAL*5/100;
 14  END IF;
 15  UPDATE EMP SET SAL=V_SAL WHERE EMPNO=V_EMPNO;
 16  DBMS_OUTPUT.PUT_LINE('REC UPDATED');
 17  COMMIT;
 18  END;
 19  /
Enter value for empno: 7788
old   6: V_EMPNO:=&EMPNO;
new   6: V_EMPNO:=7788;
REC UPDATED                                                                     

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP WHERE EMPNO=7788;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 09-DEC-82       3450                 
        20                                                                      
                                                                                

SQL>   DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_SAL EMP.SAL%TYPE;
  4  V_DEPTNO EMP.DEPTNO%TYPE;
  5  BEGIN
  6  V_EMPNO:=&EMPNO;
  7  SELECT DEPTNO,SAL INTO V_DEPTNO,V_SAL FROM EMP WHERE EMPNO=V_EMPNO;
  8   IF V_DEPTNO=10 THEN
  9     V_SAL:=V_SAL+V_SAL*10/100;
 10   ELSIF V_DEPTNO=20 THEN
 11    V_SAL:=V_SAL+V_SAL*15/100;
 12   ELSE
 13  V_SAL:=V_SAL+V_SAL*5/100;
 14  END IF;
 15  UPDATE EMP SET SAL=V_SAL WHERE EMPNO=V_EMPNO;
 16  DBMS_OUTPUT.PUT_LINE('REC UPDATED');
 17  COMMIT;
 18  END;
 19  /
Enter value for empno: 7839
old   6: V_EMPNO:=&EMPNO;
new   6: V_EMPNO:=7839;
REC UPDATED                                                                     

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP WHERE EMPNO=7839;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5500                 
        10                                                                      
                                                                                

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> DECLARE
  2  V_EMPNO EMP.EMPNO%TYPE;
  3  V_SAL EMP.SAL%TYPE;
  4  V_DEPTNO EMP.DEPTNO%TYPE;
  5  V_COUNT BINARY_INTEGER;
  6  BEGIN
  7  V_EMPNO:=&EMPNO;
  8   SELECT COUNT(*) INTO V_COUNT FROM EMP WHERE EMPNO=V_EMPNO;
  9  IF V_COUNT>0 THEN
 10  
 11  SELECT DEPTNO,SAL INTO V_DEPTNO,V_SAL FROM EMP WHERE EMPNO=V_EMPNO;
 12   IF V_DEPTNO=10 THEN
 13     V_SAL:=V_SAL+V_SAL*10/100;
 14   ELSIF V_DEPTNO=20 THEN
 15    V_SAL:=V_SAL+V_SAL*15/100;
 16   ELSE
 17  V_SAL:=V_SAL+V_SAL*5/100;
 18  END IF;
 19  UPDATE EMP SET SAL=V_SAL WHERE EMPNO=V_EMPNO;
 20  DBMS_OUTPUT.PUT_LINE('REC UPDATED');
 21  COMMIT;
 22  ELSE
 23  DBMS_OUTPUT.PUT_LINE('EMPNO DOES NOT EXISTS');
 24  END IF;
 25  END;
 26  /
Enter value for empno: 76
old   7: V_EMPNO:=&EMPNO;
new   7: V_EMPNO:=76;
EMPNO DOES NOT EXISTS                                                           

PL/SQL procedure successfully completed.

SQL> /
Enter value for empno: 7654
old   7: V_EMPNO:=&EMPNO;
new   7: V_EMPNO:=7654;
REC UPDATED                                                                     

PL/SQL procedure successfully completed.

SQL> EXIT

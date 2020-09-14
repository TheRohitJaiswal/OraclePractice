SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3  VDEPTNO EMP.DEPTNO%TYPE;
  4  TABLE_BUSY EXCEPTION;
  5  PURGE EXCEPTION_INIT(TABLE_BUSY, -00054);
  6  BEGIN
  7  VDEPTNO := &DEPTNO;
  8  FOR V_EMP IN V_C1(VDEPTNO) LOOP
  9  INSERT INTO TEST VALUES(V_EMP.EMPNO,V_EMP.ENAME,V_EMP.SAL);
 10  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
 11  END LOOP;
 12  EXCEPTION
 13  WHEN INVALID_CURSOR THEN
 14  RAISE_APPLICATION_ERROR(-20001, 'THE CURSOR IS INVALID');
 15  WHEN CURSOR_ALREADY_OPEN THEN
 16  RAISE_APPLICATION_ERROR(-20002, 'THE CURSOR IS ALREADY OPEN');
 17  WHEN ROWTYPE_MISMATCH THEN
 18  RAISE_APPLICATION_ERROR(-20003, 'THE DATA TYPE DOES NOT MATCH');
 19  WHEN TABLE_BUSY THEN
 20  RAISE_APPLICATION_ERROR(-20004, 'TABLE IS BEING USED BY ANOTHER USER');
 21* END;
SQL> /
Enter value for deptno: 10
old   7: VDEPTNO := &DEPTNO;
new   7: VDEPTNO := 10;
PURGE EXCEPTION_INIT(TABLE_BUSY, -00054);
      *
ERROR at line 5:
ORA-06550: line 5, column 7: 
PLS-00201: identifier 'EXCEPTION_INIT' must be declared 
ORA-06550: line 5, column 7: 
PL/SQL: Item ignored 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2  CURSOR V_C1(V_DEPTNO EMP.DEPTNO%TYPE) IS SELECT EMPNO,ENAME,SAL FROM EMP WHERE DEPTNO = V_DEPTNO FOR UPDATE NOWAIT;
  3  VDEPTNO EMP.DEPTNO%TYPE;
  4  TABLE_BUSY EXCEPTION;
  5  PRAGMA EXCEPTION_INIT(TABLE_BUSY, -00054);
  6  BEGIN
  7  VDEPTNO := &DEPTNO;
  8  FOR V_EMP IN V_C1(VDEPTNO) LOOP
  9  INSERT INTO TEST VALUES(V_EMP.EMPNO,V_EMP.ENAME,V_EMP.SAL);
 10  UPDATE EMP SET SAL = SAL+SAL*0.15 WHERE CURRENT OF V_C1;
 11  END LOOP;
 12  EXCEPTION
 13  WHEN INVALID_CURSOR THEN
 14  RAISE_APPLICATION_ERROR(-20001, 'THE CURSOR IS INVALID');
 15  WHEN CURSOR_ALREADY_OPEN THEN
 16  RAISE_APPLICATION_ERROR(-20002, 'THE CURSOR IS ALREADY OPEN');
 17  WHEN ROWTYPE_MISMATCH THEN
 18  RAISE_APPLICATION_ERROR(-20003, 'THE DATA TYPE DOES NOT MATCH');
 19  WHEN TABLE_BUSY THEN
 20  RAISE_APPLICATION_ERROR(-20004, 'TABLE IS BEING USED BY ANOTHER USER');
 21* END;
SQL> /
Enter value for deptno: 10
old   7: VDEPTNO := &DEPTNO;
new   7: VDEPTNO := 10;
DECLARE
*
ERROR at line 1:
ORA-20004: TABLE IS BEING USED BY ANOTHER USER 
ORA-06512: at line 20 


SQL> /
Enter value for deptno: 10
old   7: VDEPTNO := &DEPTNO;
new   7: VDEPTNO := 10;

PL/SQL procedure successfully completed.

SQL> SELECT * FROM TEST;

     EMPNO ENAME                       SAL                                                                                                                                                              
---------- -------------------- ----------                                                                                                                                                              
      7839 KING                       5750                                                                                                                                                              
      7782 CLARK                      2818                                                                                                                                                              
      7934 MILLER                     1495                                                                                                                                                              

SQL> SPOOL OFF

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION GET_JOB(V_EMPNO EMP.EMPNO%TYPE)
  2  RETURN VARCHAR2(35)
  3  IS
  4  TITLE VARCHAR2(35);
  5  BEGIN
  6  SELECT JOB INTO TITLE FROM EMP WHERE EMPNO = V_EMPNO;
  7  RETURN TITLE;
  8  EXCEPTION 
  9  WHEN NO_DATA_FOUND THEN
 10  RAISE_APPLICATION_ERROR(-20001,'EMPNO DOES NOT EXISTS');
 11* END;
SQL> /

Warning: Function created with compilation errors.

SQL> SHOW ERR
Errors for FUNCTION GET_JOB:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
2/16     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         . @ % ; is authid as cluster order using external character            
         deterministic parallel_enable pipelined aggregate                      
         result_cache                                                           
                                                                                
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION GET_JOB(V_EMPNO EMP.EMPNO%TYPE)
  2  RETURN VARCHAR2
  3  IS
  4  TITLE VARCHAR2(35);
  5  BEGIN
  6  SELECT JOB INTO TITLE FROM EMP WHERE EMPNO = V_EMPNO;
  7  RETURN TITLE;
  8  EXCEPTION 
  9  WHEN NO_DATA_FOUND THEN
 10  RAISE_APPLICATION_ERROR(-20001,'EMPNO DOES NOT EXISTS');
 11* END;
SQL> /

Function created.

SQL> VARIABLE TITLE VARCHAR2;
SQL> EXEC TITLE:=GET_JOB(7788);
BEGIN TITLE:=GET_JOB(7788); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7: 
PLS-00201: identifier 'TITLE' must be declared 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> EXEC :TITLE:=GET_JOB(7788);
BEGIN :TITLE:=GET_JOB(7788); END;

*
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: character string buffer too small 
ORA-06512: at line 1 


SQL> VARIABLE TITLE VARCHAR2(35);
SQL> EXEC :TITLE:=GET_JOB(7788);

PL/SQL procedure successfully completed.

SQL> PRINT :TITLE;

TITLE                                                                           
--------------------------------------------------------------------------------
ANALYST                                                                         

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION GET_ANNUAL_SAL(V_SAL EMP.SAL%TYPE)
  2  RETURN NUMBER(10)
  3  IS
  4  BEGIN
  5  V_SAL := V_SAL * 12;
  6  RETURN V_SAL;
  7* END;
SQL> /

Warning: Function created with compilation errors.

SQL> SHOW ERR
Errors for FUNCTION GET_ANNUAL_SAL:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
2/14     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         . @ % ; is authid as cluster order using external character            
         deterministic parallel_enable pipelined aggregate                      
         result_cache                                                           
                                                                                
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION GET_ANNUAL_SAL(V_SAL EMP.SAL%TYPE)
  2  RETURN NUMBER
  3  IS
  4  BEGIN
  5  V_SAL := V_SAL * 12;
  6  RETURN V_SAL;
  7* END;
SQL> /

Warning: Function created with compilation errors.

SQL> SHOW ERR
Errors for FUNCTION GET_ANNUAL_SAL:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
5/1      PL/SQL: Statement ignored                                              
5/1      PLS-00363: expression 'V_SAL' cannot be used as an assignment          
         target                                                                 
                                                                                
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION GET_ANNUAL_SAL(V_SAL EMP.SAL%TYPE)
  2  RETURN NUMBER
  3  IS
  4  F_SAL EMP.SAL%TYPE;
  5  BEGIN
  6  F_SAL := V_SAL * 12;
  7  RETURN F_SAL;
  8* END;
SQL> /

Function created.

SQL> SELECT EMPNO, ENAME, GET_ANNUAL_SAL(SAL) FROM EMP WHERE DEPTNO = 30;

     EMPNO ENAME      GET_ANNUAL_SAL(SAL)                                       
---------- ---------- -------------------                                       
      7698 BLAKE                    35910                                       
      7499 ALLEN                    20160                                       
      7844 TURNER                   18900                                       
      7900 JAMES                    11970                                       
      7521 WARD                     15750                                       

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE VALID_DEPTNO(V_DEPTNO DEPT.DEPTNO%TYPE)
  2  RETURN BOOLEAN
  3  IS
  4  BEGIN
  5  SELECT * FROM DEPT WHERE DEPTNO = V_DEPTNO;
  6  RETURN TRUE;
  7  EXCEPTION
  8  WHEN NO_DATA_FOUND THEN
  9  RETURN FALSE;
 10* END;
SQL> /
CREATE OR REPLACE VALID_DEPTNO(V_DEPTNO DEPT.DEPTNO%TYPE)
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION VALID_DEPTNO(V_DEPTNO DEPT.DEPTNO%TYPE)
  2  RETURN BOOLEAN
  3  IS
  4  BEGIN
  5  SELECT * FROM DEPT WHERE DEPTNO = V_DEPTNO;
  6  RETURN TRUE;
  7  EXCEPTION
  8  WHEN NO_DATA_FOUND THEN
  9  RETURN FALSE;
 10* END;
SQL> /

Warning: Function created with compilation errors.

SQL> SHOW ERR
Errors for FUNCTION VALID_DEPTNO:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
5/1      PLS-00428: an INTO clause is expected in this SELECT statement         
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION VALID_DEPTNO(V_DEPTNO DEPT.DEPTNO%TYPE)
  2  RETURN BOOLEAN
  3  IS
  4  F_DEPTNO DEPT.DEPTNO%TYPE;
  5  BEGIN
  6  SELECT DEPTNO INTO F_DEPTNO FROM DEPT WHERE DEPTNO = V_DEPTNO;
  7  RETURN TRUE;
  8  EXCEPTION
  9  WHEN NO_DATA_FOUND THEN
 10  RETURN FALSE;
 11* END;
SQL> /

Function created.

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION VALID_DEPTNO(V_DEPTNO DEPT.DEPTNO%TYPE)
  2  RETURN BOOLEAN
  3  IS
  4  F_DEPTNO DEPT.DEPTNO%TYPE;
  5  BEGIN
  6  SELECT DEPTNO INTO F_DEPTNO FROM DEPT WHERE DEPTNO = V_DEPTNO;
  7  RETURN TRUE;
  8  EXCEPTION
  9  WHEN NO_DATA_FOUND THEN
 10  RETURN FALSE;
 11* END;
SQL> /

Function created.

SQL> SELECT TEXT FROM USER_SOURCE WHERE NAME='ADD_EMP';

no rows selected

SQL> SET LINESIZE 200;
SQL> SELECT * FROM USER_PROCEDURES;

OBJECT_NAME                                                                                                                      PROCEDURE_NAME                  OBJECT_ID SUBPROGRAM_ID                
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ ---------- -------------                
OVERLOAD                                 OBJECT_TYPE         AGG PIP IMPLTYPEOWNER                  IMPLTYPENAME                   PAR INT DET AUTHID                                                   
---------------------------------------- ------------------- --- --- ------------------------------ ------------------------------ --- --- --- ------------                                             
VALID_DEPTNO                                                                                                                                                         20855             1                
                                         FUNCTION            NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
GET_ANNUAL_SAL                                                                                                                                                       20854             1                
                                         FUNCTION            NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
BK_TR                                                                                                                                                                20850             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        

OBJECT_NAME                                                                                                                      PROCEDURE_NAME                  OBJECT_ID SUBPROGRAM_ID                
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ ---------- -------------                
OVERLOAD                                 OBJECT_TYPE         AGG PIP IMPLTYPEOWNER                  IMPLTYPENAME                   PAR INT DET AUTHID                                                   
---------------------------------------- ------------------- --- --- ------------------------------ ------------------------------ --- --- --- ------------                                             
INSERT_EMP                                                                                                                                                           20833             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
GET_EMP                                                                                                                                                              20809             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
DELETE_DEPT                                                                                                                                                          20700             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        

OBJECT_NAME                                                                                                                      PROCEDURE_NAME                  OBJECT_ID SUBPROGRAM_ID                
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ ---------- -------------                
OVERLOAD                                 OBJECT_TYPE         AGG PIP IMPLTYPEOWNER                  IMPLTYPENAME                   PAR INT DET AUTHID                                                   
---------------------------------------- ------------------- --- --- ------------------------------ ------------------------------ --- --- --- ------------                                             
GET_JOB                                                                                                                                                              20853             1                
                                         FUNCTION            NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
UPDATE_DEPT                                                                                                                                                          20699             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
ADD_DEPT                                                                                                                                                             20698             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  CURRENT_USER                                             
                                                                                                                                                                                                        

OBJECT_NAME                                                                                                                      PROCEDURE_NAME                  OBJECT_ID SUBPROGRAM_ID                
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ ---------- -------------                
OVERLOAD                                 OBJECT_TYPE         AGG PIP IMPLTYPEOWNER                  IMPLTYPENAME                   PAR INT DET AUTHID                                                   
---------------------------------------- ------------------- --- --- ------------------------------ ------------------------------ --- --- --- ------------                                             
MOB_PROC                                                                                                                                                             20811             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        
REC_INSERT                                                                                                                                                           20696             1                
                                         PROCEDURE           NO  NO                                                                NO  NO  NO  CURRENT_USER                                             
                                                                                                                                                                                                        
CAL_PCT                                                                                                                                                              20697             1                
                                         FUNCTION            NO  NO                                                                NO  NO  NO  DEFINER                                                  
                                                                                                                                                                                                        

OBJECT_NAME                                                                                                                      PROCEDURE_NAME                  OBJECT_ID SUBPROGRAM_ID                
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ ---------- -------------                
OVERLOAD                                 OBJECT_TYPE         AGG PIP IMPLTYPEOWNER                  IMPLTYPENAME                   PAR INT DET AUTHID                                                   
---------------------------------------- ------------------- --- --- ------------------------------ ------------------------------ --- --- --- ------------                                             
PK1                                                                                                                                                                  20807             0                
                                         PACKAGE             NO  NO                                                                NO  NO  NO                                                           
                                                                                                                                                                                                        

13 rows selected.

SQL> SELECT TEXT FROM USER_SOURCE WHERE NAME = 'INSERT_EMP';

TEXT                                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
PROCEDURE INSERT_EMP(V_DEPTNO EMP.DEPTNO%TYPE)                                                                                                                                                          
IS                                                                                                                                                                                                      
CURSOR C1(DNO EMP.DEPTNO%TYPE) IS SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPTNO = DNO FOR UPDATE NOWAIT;                                                                                            
CNT INTEGER;                                                                                                                                                                                            
BEGIN                                                                                                                                                                                                   
CNT:=0;                                                                                                                                                                                                 
FOR V_EMP IN C1(V_DEPTNO) LOOP                                                                                                                                                                          
INSERT INTO TEST VALUES(V_EMP.EMPNO, V_EMP.ENAME, V_EMP.DEPTNO);                                                                                                                                        
DBMS_OUTPUT.PUT_LINE('REC INSERTED');                                                                                                                                                                   
UPDATE EMP SET SAL = SAL+SAL*0.2 WHERE CURRENT OF C1;                                                                                                                                                   
DBMS_OUTPUT.PUT_LINE('REC UPDATED');                                                                                                                                                                    

TEXT                                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CNT:=CNT+1;                                                                                                                                                                                             
END LOOP;                                                                                                                                                                                               
IF CNT = 0 THEN                                                                                                                                                                                         
RAISE_APPLICATION_ERROR(-20001,'INVALID DEPTNO');                                                                                                                                                       
END IF;                                                                                                                                                                                                 
END;                                                                                                                                                                                                    

17 rows selected.

SQL> SET PAGESIZE 200;
SQL> SELECT TEXT FROM USER_SOURCE WHERE NAME = 'INSERT_EMP';

TEXT                                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
PROCEDURE INSERT_EMP(V_DEPTNO EMP.DEPTNO%TYPE)                                                                                                                                                          
IS                                                                                                                                                                                                      
CURSOR C1(DNO EMP.DEPTNO%TYPE) IS SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPTNO = DNO FOR UPDATE NOWAIT;                                                                                            
CNT INTEGER;                                                                                                                                                                                            
BEGIN                                                                                                                                                                                                   
CNT:=0;                                                                                                                                                                                                 
FOR V_EMP IN C1(V_DEPTNO) LOOP                                                                                                                                                                          
INSERT INTO TEST VALUES(V_EMP.EMPNO, V_EMP.ENAME, V_EMP.DEPTNO);                                                                                                                                        
DBMS_OUTPUT.PUT_LINE('REC INSERTED');                                                                                                                                                                   
UPDATE EMP SET SAL = SAL+SAL*0.2 WHERE CURRENT OF C1;                                                                                                                                                   
DBMS_OUTPUT.PUT_LINE('REC UPDATED');                                                                                                                                                                    
CNT:=CNT+1;                                                                                                                                                                                             
END LOOP;                                                                                                                                                                                               
IF CNT = 0 THEN                                                                                                                                                                                         
RAISE_APPLICATION_ERROR(-20001,'INVALID DEPTNO');                                                                                                                                                       
END IF;                                                                                                                                                                                                 
END;                                                                                                                                                                                                    

17 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE PROCEDURE ADD_EMP(V_EMPNO EMP.EMPNO%TYPE,V_ENAME EMP.ENAME%TYPE,V_SAL EMP.SAL%TYPE, V_DEPTNO EMP.DEPTNO%TYPE)
  2  IS
  3  BEGIN
  4  IF VALID_DEPTNO(V_DEPTNO) THEN
  5  INSERT INTO EMP VALUES(V_EMPNO,V_ENAME,V_SAL,V_DEPTNO);
  6  DBMS_OUTPUT.PUT_LINE('REC INSERTED');
  7  ELSE
  8  RAISE_APPLICATION_ERROR(-20001,'INVALID DEPTNO');
  9  END IF;
 10  EXCEPTION
 11  WHEN DUP_VAL_ON_INDEX THEN
 12  RAISE_APPLICATION_ERROR(-20002,'DUPLICATE VALUES OF EMPNO IS NOT ALLOWED');
 13* END;
SQL> /

Warning: Procedure created with compilation errors.

SQL> SHOW ERR
Errors for PROCEDURE ADD_EMP:

LINE/COL ERROR                                                                                                                                                                                          
-------- -----------------------------------------------------------------                                                                                                                              
5/1      PL/SQL: SQL Statement ignored                                                                                                                                                                  
5/13     PL/SQL: ORA-00947: not enough values                                                                                                                                                           
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE PROCEDURE ADD_EMP(V_EMPNO EMP.EMPNO%TYPE,V_ENAME EMP.ENAME%TYPE,V_SAL EMP.SAL%TYPE, V_DEPTNO EMP.DEPTNO%TYPE)
  2  IS
  3  BEGIN
  4  IF VALID_DEPTNO(V_DEPTNO) THEN
  5  INSERT INTO EMP VALUES(V_EMPNO,V_ENAME,V_SAL,V_DEPTNO);
  6  DBMS_OUTPUT.PUT_LINE('REC INSERTED');
  7  ELSE
  8  RAISE_APPLICATION_ERROR(-20001,'INVALID DEPTNO');
  9  END IF;
 10  EXCEPTION
 11  WHEN DUP_VAL_ON_INDEX THEN
 12  RAISE_APPLICATION_ERROR(-20002,'DUPLICATE VALUES OF EMPNO IS NOT ALLOWED');
 13* END;
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

  1  CREATE OR REPLACE PROCEDURE ADD_EMP(V_EMPNO EMP.EMPNO%TYPE,V_ENAME EMP.ENAME%TYPE,V_SAL EMP.SAL%TYPE, V_DEPTNO EMP.DEPTNO%TYPE)
  2  IS
  3  BEGIN
  4  IF VALID_DEPTNO(V_DEPTNO) THEN
  5  INSERT INTO EMP(EMPNO,ENAME,SAL,DEPTNO) VALUES(V_EMPNO,V_ENAME,V_SAL,V_DEPTNO);
  6  DBMS_OUTPUT.PUT_LINE('REC INSERTED');
  7  ELSE
  8  RAISE_APPLICATION_ERROR(-20001,'INVALID DEPTNO');
  9  END IF;
 10  EXCEPTION
 11  WHEN DUP_VAL_ON_INDEX THEN
 12  RAISE_APPLICATION_ERROR(-20002,'DUPLICATE VALUES OF EMPNO IS NOT ALLOWED');
 13* END;
SQL> /

Procedure created.

SQL> EXEC ADD_EMP(8902,'ROHIT',2000,10);

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO STAR                                                                                                              
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------------                                                                                              
      7839 KING       PRESIDENT            17-NOV-81       5750                    10                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81     2992.5                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81     2817.5                    10                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81    3421.25                    20                                                                                                                   
      8902 ROHIT                                           2000                    10                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1680        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1575          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81      997.5                    30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81     1312.5        500         30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3450                    20                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        920                    20                                                                                                                   
      7788 scott      ANALYST         7566 09-DEC-82       3450                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1265                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1495                    10                                                                                                                   

14 rows selected.

SQL> EXEC ADD_EMP(8902,'ROHIT',2000,10);
BEGIN ADD_EMP(8902,'ROHIT',2000,10); END;

*
ERROR at line 1:
ORA-20002: DUPLICATE VALUES OF EMPNO IS NOT ALLOWED 
ORA-06512: at "SCOTT.ADD_EMP", line 12 
ORA-06512: at line 1 


SQL> EXEC ADD_EMP(8903,'ROHIT',2000,70);
BEGIN ADD_EMP(8903,'ROHIT',2000,70); END;

*
ERROR at line 1:
ORA-20001: INVALID DEPTNO 
ORA-06512: at "SCOTT.ADD_EMP", line 8 
ORA-06512: at line 1 


SQL> SELECT INSTR('ROHIT','R',-1);
SELECT INSTR('ROHIT','R',-1)
                           *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT INSTR('ROHIT','R',-1) FROM DUAL;

INSTR('ROHIT','R',-1)                                                                                                                                                                                   
---------------------                                                                                                                                                                                   
                    1                                                                                                                                                                                   

SQL> SELECT INSTR('ROHIT IS A GOOD BOY','O',-1) FROM DUAL;

INSTR('ROHITISAGOODBOY','O',-1)                                                                                                                                                                         
-------------------------------                                                                                                                                                                         
                             18                                                                                                                                                                         

SQL> SELECT INSTR('ROHIT IS A GOOD BOY','O',-1,2) FROM DUAL;

INSTR('ROHITISAGOODBOY','O',-1,2)                                                                                                                                                                       
---------------------------------                                                                                                                                                                       
                               14                                                                                                                                                                       

SQL> SELECT INSTR('ROHIT IS A GOOD BOY','O',-1,3) FROM DUAL;

INSTR('ROHITISAGOODBOY','O',-1,3)                                                                                                                                                                       
---------------------------------                                                                                                                                                                       
                               13                                                                                                                                                                       

SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',1,3);
SELECT SUBSTR('ROHIT IS A GOOD BOY',1,3)
                                       *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',1,3) FROM DUAL;

SUB                                                                                                                                                                                                     
---                                                                                                                                                                                                     
ROH                                                                                                                                                                                                     

SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',1,3,-1) FROM DUAL;
SELECT SUBSTR('ROHIT IS A GOOD BOY',1,3,-1) FROM DUAL
                                        *
ERROR at line 1:
ORA-00939: too many arguments for function 


SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',-1,3) FROM DUAL;

S                                                                                                                                                                                                       
-                                                                                                                                                                                                       
Y                                                                                                                                                                                                       

SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',-1) FROM DUAL;

S                                                                                                                                                                                                       
-                                                                                                                                                                                                       
Y                                                                                                                                                                                                       

SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',-2) FROM DUAL;

SU                                                                                                                                                                                                      
--                                                                                                                                                                                                      
OY                                                                                                                                                                                                      

SQL> SELECT SUBSTR('ROHIT IS A GOOD BOY',-2,1) FROM DUAL;

S                                                                                                                                                                                                       
-                                                                                                                                                                                                       
O                                                                                                                                                                                                       

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100):='';
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  EXEC LPAD(NSTR,LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10* END;
SQL> SELECT LENGTH('ROHIT') FROM DUAL;

LENGTH('ROHIT')                                                                                                                                                                                         
---------------                                                                                                                                                                                         
              5                                                                                                                                                                                         

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100):='';
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  EXEC LPAD(NSTR,LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10* END;
SQL> /

Warning: Function created with compilation errors.

SQL> SHOW ERR
Errors for FUNCTION CAL_REVERSE:

LINE/COL ERROR                                                                                                                                                                                          
-------- -----------------------------------------------------------------                                                                                                                              
7/6      PLS-00103: Encountered the symbol "LPAD" when expecting one of                                                                                                                                 
         the following:                                                                                                                                                                                 
         := . ( @ % ;                                                                                                                                                                                   
         The symbol ":=" was substituted for "LPAD" to continue.                                                                                                                                        
                                                                                                                                                                                                        
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100):='';
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  LPAD(NSTR,LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10* END;
SQL> /

Warning: Function created with compilation errors.

SQL> SHOW ERR
Errors for FUNCTION CAL_REVERSE:

LINE/COL ERROR                                                                                                                                                                                          
-------- -----------------------------------------------------------------                                                                                                                              
7/1      PL/SQL: Statement ignored                                                                                                                                                                      
7/1      PLS-00221: 'LPAD' is not a procedure or is undefined                                                                                                                                           
SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100):='';
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  NSTR:=LPAD(NSTR,LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10* END;
SQL> /

Function created.

SQL> SELECT CAL_REVERSE('ROHIT') FROM DUAL;

CAL_REVERSE('ROHIT')                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                                                                                                                                        

SQL> CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100):='';
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  NSTR:=LPAD(NSTR,LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10  END;
 11  /

Function created.

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100);
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  NSTR:=LPAD(NSTR,LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10* END;
SQL> /

Function created.

SQL> SELECT CAL_REVERSE('ROHIT') FROM DUAL;

CAL_REVERSE('ROHIT')                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                                                                                                                                        

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100);
  5  BEGIN
  6  FOR I IN 1..LENGTH(STR) LOOP
  7  NSTR:=LPAD('      ',LENGTH(STR),SUBSTR(STR,I,1));
  8  END LOOP;
  9  RETURN NSTR;
 10* END;
SQL> /

Function created.

SQL> SELECT CAL_REVERSE('ROHIT') FROM DUAL;

CAL_REVERSE('ROHIT')                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                                                                                                                                        

SQL> SELECT LPAD('      ',LENGTH(STR),SUBSTR(STR,1,1)) FROM DUAL;
SELECT LPAD('      ',LENGTH(STR),SUBSTR(STR,1,1)) FROM DUAL
                                        *
ERROR at line 1:
ORA-00904: "STR": invalid identifier 


SQL> SELECT LPAD('      ',LENGTH('ROHIT'),SUBSTR('ROHIT',1,1)) FROM DUAL;

LPAD(                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
                                                                                                                                                                                                        

SQL> SELECT LPAD('            ',LENGTH('ROHIT'),SUBSTR('ROHIT',1,1)) FROM DUAL;

LPAD(                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
                                                                                                                                                                                                        

SQL> SELECT LPAD('***',LENGTH('ROHIT'),SUBSTR('ROHIT',1,1)) FROM DUAL;

LPAD(                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
RR***                                                                                                                                                                                                   

SQL> SELECT LPAD('',LENGTH('ROHIT'),SUBSTR('ROHIT',1,1)) FROM DUAL;

L                                                                                                                                                                                                       
-                                                                                                                                                                                                       
                                                                                                                                                                                                        

SQL> SELECT LPAD('*',LENGTH('ROHIT'),SUBSTR('ROHIT',1,1)) FROM DUAL;

LPAD(                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
RRRR*                                                                                                                                                                                                   

SQL> SELECT LPAD(SUBSTR('ROHIT',1,1),LENGTH('ROHIT'),SUBSTR('ROHIT',1,1)) FROM DUAL;

LPAD(                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
RRRRR                                                                                                                                                                                                   

SQL> SELECT LPAD(SUBSTR('ROHIT',1,1),LENGTH('ROHIT'),SUBSTR('ROHIT',2,1)) FROM DUAL;

LPAD(                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
OOOOR                                                                                                                                                                                                   

SQL> ED
Wrote file afiedt.buf

  1* SELECT LPAD(SUBSTR('ROHIT',1,1),LENGTH('ROHIT'),SUBSTR('ROHIT',2,1)) FROM DUAL
SQL> SELECT TEXT FROM USER_SOURCE WHERE NAME='CAL_REVERSE';

TEXT                                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
FUNCTION CAL_REVERSE(STR VARCHAR2)                                                                                                                                                                      
RETURN VARCHAR2                                                                                                                                                                                         
IS                                                                                                                                                                                                      
NSTR VARCHAR2(100);                                                                                                                                                                                     
BEGIN                                                                                                                                                                                                   
FOR I IN 1..LENGTH(STR) LOOP                                                                                                                                                                            
NSTR:=LPAD('      ',LENGTH(STR),SUBSTR(STR,I,1));                                                                                                                                                       
END LOOP;                                                                                                                                                                                               
RETURN NSTR;                                                                                                                                                                                            
END;                                                                                                                                                                                                    

10 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION CAL_REVERSE(STR VARCHAR2)
  2  RETURN VARCHAR2
  3  IS
  4  NSTR VARCHAR2(100);
  5  BEGIN
  6  NSTR:=SUBSTR(STR,1,1);
  7  FOR I IN 2..LENGTH(STR) LOOP
  8  NSTR:=LPAD(NSTR,LENGTH(NSTR)+1,SUBSTR(STR,I,1));
  9  END LOOP;
 10  RETURN NSTR;
 11* END;
SQL> /

Function created.

SQL> SELECT CAL_REVERSE('ROHIT') FROM DUAL;

CAL_REVERSE('ROHIT')                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TIHOR                                                                                                                                                                                                   

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION FACT(VAR INTEGER)
  2  RETURN INTEGER
  3  IS
  4  CALC INTEGER:=1;
  5  BEGIN
  6  FOR I IN REVERSE 1..VAR LOOP
  7  CALC := CALC * I;
  8  END LOOP;
  9* END;
SQL> /

Function created.

SQL> SELECT FACT(5) FROM DUAL;
SELECT FACT(5) FROM DUAL
       *
ERROR at line 1:
ORA-06503: PL/SQL: Function returned without value 
ORA-06512: at "SCOTT.FACT", line 9 


SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE FUNCTION FACT(VAR INTEGER)
  2  RETURN INTEGER
  3  IS
  4  CALC INTEGER:=1;
  5  BEGIN
  6  FOR I IN REVERSE 1..VAR LOOP
  7  CALC := CALC * I;
  8  END LOOP;
  9  RETURN CALC;
 10* END;
SQL> /

Function created.

SQL> SELECT FACT(5) FROM DUAL;

   FACT(5)                                                                                                                                                                                              
----------                                                                                                                                                                                              
       120                                                                                                                                                                                              

SQL> SPOOL OFF;

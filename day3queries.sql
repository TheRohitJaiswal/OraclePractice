SQL> select sum(sal) from emp;

  SUM(SAL)                                                                      
----------                                                                      
     29025                                                                      

SQL> select max(sal) from emp;

  MAX(SAL)                                                                      
----------                                                                      
      5000                                                                      

SQL> select * from dual;

D                                                                               
-                                                                               
X                                                                               

SQL> select abs(-2) from dual;

   ABS(-2)                                                                      
----------                                                                      
         2                                                                      

SQL> select sqrt(25) from dual;

  SQRT(25)                                                                      
----------                                                                      
         5                                                                      

SQL> select sqrt(-25) from dual;
select sqrt(-25) from dual
            *
ERROR at line 1:
ORA-01428: argument '-25' is out of range 


SQL> select sqrt(abs(-25)) from dual;

SQRT(ABS(-25))                                                                  
--------------                                                                  
             5                                                                  

SQL> select ceil(2.3) from dual;

 CEIL(2.3)                                                                      
----------                                                                      
         3                                                                      

SQL> select ceil(-2.3) from dual;

CEIL(-2.3)                                                                      
----------                                                                      
        -2                                                                      

SQL> select abs(ceil(-2.3)) from dual;

ABS(CEIL(-2.3))                                                                 
---------------                                                                 
              2                                                                 

SQL> select round(7.765,1) from dual;

ROUND(7.765,1)                                                                  
--------------                                                                  
           7.8                                                                  

SQL> select round(7.765) from dual;

ROUND(7.765)                                                                    
------------                                                                    
           8                                                                    

SQL> select round(7.765,-1) from dual;

ROUND(7.765,-1)                                                                 
---------------                                                                 
             10                                                                 

SQL> select round(7.765,-2) from dual;

ROUND(7.765,-2)                                                                 
---------------                                                                 
              0                                                                 

SQL> select round(77.765,-2) from dual;

ROUND(77.765,-2)                                                                
----------------                                                                
             100                                                                

SQL> select round(77.765,-1) from dual;

ROUND(77.765,-1)                                                                
----------------                                                                
              80                                                                

SQL> select round(77.465,1) from dual;

ROUND(77.465,1)                                                                 
---------------                                                                 
           77.5                                                                 

SQL> select round(77.445,1) from dual;

ROUND(77.445,1)                                                                 
---------------                                                                 
           77.4                                                                 

SQL> select round(4.445) from dual;

ROUND(4.445)                                                                    
------------                                                                    
           4                                                                    

SQL> select trunc(7.78,1) from dual;

TRUNC(7.78,1)                                                                   
-------------                                                                   
          7.7                                                                   

SQL> select trunc(7.78) from dual;

TRUNC(7.78)                                                                     
-----------                                                                     
          7                                                                     

SQL> select trunc(7.78,-1) from dual;

TRUNC(7.78,-1)                                                                  
--------------                                                                  
             0                                                                  

SQL> select trunc(77.78,-1) from dual;

TRUNC(77.78,-1)                                                                 
---------------                                                                 
             70                                                                 

SQL> select trunc(77.78,-2) from dual;

TRUNC(77.78,-2)                                                                 
---------------                                                                 
              0                                                                 

SQL> select greatest(2,5,7,122) from dual;

GREATEST(2,5,7,122)                                                             
-------------------                                                             
                122                                                             

SQL> select concat('Rohit', 'jaiswal') from dual;

CONCAT('ROHI                                                                    
------------                                                                    
Rohitjaiswal                                                                    

SQL> select substr('Raja',1,3) from dual;

SUB                                                                             
---                                                                             
Raj                                                                             

SQL> select substr('Raja',3,2) from dual;

SU                                                                              
--                                                                              
ja                                                                              

SQL> select substr('Raja',3,3) from dual;

SU                                                                              
--                                                                              
ja                                                                              

SQL> select abs(-89) from emp;

  ABS(-89)                                                                      
----------                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      

  ABS(-89)                                                                      
----------                                                                      
        89                                                                      
        89                                                                      
        89                                                                      

14 rows selected.

SQL> pagelength 20
SP2-0734: unknown command beginning "pagelength..." - rest of line ignored.
SQL> set pagesize 20
SQL> select abs(-89) from emp;

  ABS(-89)                                                                      
----------                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      
        89                                                                      

14 rows selected.

SQL> select substr('Raja') from dual;
select substr('Raja') from dual
       *
ERROR at line 1:
ORA-00938: not enough arguments for function 


SQL> select substr('Raja',2) from dual;

SUB                                                                             
---                                                                             
aja                                                                             

SQL> select substr('Raja',-1) from dual;

S                                                                               
-                                                                               
a                                                                               

SQL> select substr('Raja',-1,2) from dual;

S                                                                               
-                                                                               
a                                                                               

SQL> select substr('Raja',-3,2) from dual;

SU                                                                              
--                                                                              
aj                                                                              

SQL> select substr('Raja',-3,3) from dual;

SUB                                                                             
---                                                                             
aja                                                                             

SQL> select substr('Raja',-3,-1) from dual;

S                                                                               
-                                                                               
                                                                                

SQL> select substr('Raja',-3,-2) from dual;

S                                                                               
-                                                                               
                                                                                

SQL> select substr('Raja',3,-2) from dual;

S                                                                               
-                                                                               
                                                                                

SQL> select initcap(ename) from emp;

INITCAP(EN                                                                      
----------                                                                      
King                                                                            
Blake                                                                           
Clark                                                                           
Jones                                                                           
Martin                                                                          
Allen                                                                           
Turner                                                                          
James                                                                           
Ward                                                                            
Ford                                                                            
Smith                                                                           
Scott                                                                           
Adams                                                                           
Miller                                                                          

14 rows selected.

SQL> select mod(4,2) from dual;

  MOD(4,2)                                                                      
----------                                                                      
         0                                                                      

SQL> select mod(4,-2) from dual;

 MOD(4,-2)                                                                      
----------                                                                      
         0                                                                      

SQL> select mod(-4,2) from dual;

 MOD(-4,2)                                                                      
----------                                                                      
         0                                                                      

SQL> select mod(-4,3) from dual;

 MOD(-4,3)                                                                      
----------                                                                      
        -1                                                                      

SQL> select mod(4,3) from dual;

  MOD(4,3)                                                                      
----------                                                                      
         1                                                                      

SQL> select mod(4,-3) from dual;

 MOD(4,-3)                                                                      
----------                                                                      
         1                                                                      

SQL> select instr('Raja','R') from dual;

INSTR('RAJA','R')                                                               
-----------------                                                               
                1                                                               

SQL> select instr('Raja','a') from dual;

INSTR('RAJA','A')                                                               
-----------------                                                               
                2                                                               

SQL> select instr('Raja','a',3,4) from dual;

INSTR('RAJA','A',3,4)                                                           
---------------------                                                           
                    0                                                           

SQL> select instr('Raja','a',3,2) from dual;

INSTR('RAJA','A',3,2)                                                           
---------------------                                                           
                    0                                                           

SQL> select instr('Raja','a',3,1) from dual;

INSTR('RAJA','A',3,1)                                                           
---------------------                                                           
                    4                                                           

SQL> select instr('Raja','a',1,1) from dual;

INSTR('RAJA','A',1,1)                                                           
---------------------                                                           
                    2                                                           

SQL> select instr('Raja','a',1,2) from dual;

INSTR('RAJA','A',1,2)                                                           
---------------------                                                           
                    4                                                           

SQL> select instr('Raja','j',1,1) from dual;

INSTR('RAJA','J',1,1)                                                           
---------------------                                                           
                    3                                                           

SQL> select instr('Raja','j',1,2) from dual;

INSTR('RAJA','J',1,2)                                                           
---------------------                                                           
                    0                                                           

SQL> select instr('Raja','j',1,0) from dual;
select instr('Raja','j',1,0) from dual
                                  *
ERROR at line 1:
ORA-01428: argument '0' is out of range 


SQL> select instr('Raja','j',1) from dual;

INSTR('RAJA','J',1)                                                             
-------------------                                                             
                  3                                                             

SQL> select instr('Raja','j',1,-1) from dual;
select instr('Raja','j',1,-1) from dual
                                   *
ERROR at line 1:
ORA-01428: argument '-1' is out of range 


SQL> select instr('Raja','j',-1,1) from dual;

INSTR('RAJA','J',-1,1)                                                          
----------------------                                                          
                     3                                                          

SQL> select instr('Raja','j',-3,1) from dual;

INSTR('RAJA','J',-3,1)                                                          
----------------------                                                          
                     0                                                          

SQL> select instr('Raja','a',-1,1) from dual;

INSTR('RAJA','A',-1,1)                                                          
----------------------                                                          
                     4                                                          

SQL> select instr('Raja','a',-1,2) from dual;

INSTR('RAJA','A',-1,2)                                                          
----------------------                                                          
                     2                                                          

SQL> select instr('Raja','a',-2,1) from dual;

INSTR('RAJA','A',-2,1)                                                          
----------------------                                                          
                     2                                                          

SQL> select instr('Raja','a',-2,2) from dual;

INSTR('RAJA','A',-2,2)                                                          
----------------------                                                          
                     0                                                          

SQL> select instr('Raja','i',1,1) from dual;

INSTR('RAJA','I',1,1)                                                           
---------------------                                                           
                    0                                                           

SQL> select instr('Raja','r',1,1) from dual;

INSTR('RAJA','R',1,1)                                                           
---------------------                                                           
                    0                                                           

SQL> select instr('Raja','R',1,1) from dual;

INSTR('RAJA','R',1,1)                                                           
---------------------                                                           
                    1                                                           

SQL> select length(ename) from emp;

LENGTH(ENAME)                                                                   
-------------                                                                   
            4                                                                   
            5                                                                   
            5                                                                   
            5                                                                   
            6                                                                   
            5                                                                   
            6                                                                   
            5                                                                   
            4                                                                   
            4                                                                   
            5                                                                   
            5                                                                   
            5                                                                   
            6                                                                   

14 rows selected.

SQL> select lpad('Rohit') from dual;
select lpad('Rohit') from dual
       *
ERROR at line 1:
ORA-00938: not enough arguments for function 


SQL> select lpad('Rohit',1) from dual;

L                                                                               
-                                                                               
R                                                                               

SQL> select lpad('Rohit',2) from dual;

LP                                                                              
--                                                                              
Ro                                                                              

SQL> select lpad('Rohit',5) from dual;

LPAD(                                                                           
-----                                                                           
Rohit                                                                           

SQL> select lpad('rohit',5) from dual;

LPAD(                                                                           
-----                                                                           
rohit                                                                           

SQL> select lpad('rohit',5,1) from dual;

LPAD(                                                                           
-----                                                                           
rohit                                                                           

SQL> select lpad('rohit',5,3) from dual;

LPAD(                                                                           
-----                                                                           
rohit                                                                           

SQL> select rpad('rohit',5,3) from dual;

RPAD(                                                                           
-----                                                                           
rohit                                                                           

SQL> select rpad('rohit jaiswal',5,3) from dual;

RPAD(                                                                           
-----                                                                           
rohit                                                                           

SQL> select rpad('rohit jaiswal',15,3) from dual;

RPAD('ROHITJAIS                                                                 
---------------                                                                 
rohit jaiswal33                                                                 

SQL> select lpad('rohit jaiswal',15,' ') from dual;

LPAD('ROHITJAIS                                                                 
---------------                                                                 
  rohit jaiswal                                                                 

SQL> select rpad('rohit jaiswal',15,' ') from dual;

RPAD('ROHITJAIS                                                                 
---------------                                                                 
rohit jaiswal                                                                   

SQL> select ltrim('rohit') from dual;

LTRIM                                                                           
-----                                                                           
rohit                                                                           

SQL> select ltrim('rohit','r') from dual;

LTRI                                                                            
----                                                                            
ohit                                                                            

SQL> select ltrim('rohitr','r') from dual;

LTRIM                                                                           
-----                                                                           
ohitr                                                                           

SQL> select ltrim('rohitr','h') from dual;

LTRIM(                                                                          
------                                                                          
rohitr                                                                          

SQL> select rtrim('rohitr','r') from dual;

RTRIM                                                                           
-----                                                                           
rohit                                                                           

SQL> select trim('rohitr','r') from dual;
select trim('rohitr','r') from dual
                    *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select trim('rohitr') from dual;

TRIM('                                                                          
------                                                                          
rohitr                                                                          

SQL> select trim('rohitr','r') from dual;
select trim('rohitr','r') from dual
                    *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select trim(leading 'r' from 'rohitr') from dual;

TRIM(                                                                           
-----                                                                           
ohitr                                                                           

SQL> select trim(trailing 'r' from 'rohitr') from dual;

TRIM(                                                                           
-----                                                                           
rohit                                                                           

SQL> select trim('r' from 'rohitr') from dual;

TRIM                                                                            
----                                                                            
ohit                                                                            

SQL> select trim('r' from 'rohritr') from dual;

TRIM(                                                                           
-----                                                                           
ohrit                                                                           

SQL> select reverse('rohit') from dual;

REVER                                                                           
-----                                                                           
tihor                                                                           

SQL> select reverse('rohit',2) from dual;
select reverse('rohit',2) from dual
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select replace('rohit is a good boy', 'good', 'bad') from dual;

REPLACE('ROHITISAG                                                              
------------------                                                              
rohit is a bad boy                                                              

SQL> select translate('rohit is a good boy','gb','dg') from dual;

TRANSLATE('ROHITISA                                                             
-------------------                                                             
rohit is a dood goy                                                             

SQL> spool off

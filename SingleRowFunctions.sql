SQL> select sysdate from dual;

SYSDATE                                                                         
---------                                                                       
05-SEP-20                                                                       

SQL> select current_date from dual;

CURRENT_D                                                                       
---------                                                                       
05-SEP-20                                                                       

SQL> conn hr/hr
Connected.
SQL> descrbe employees;
SP2-0734: unknown command beginning "descrbe em..." - rest of line ignored.
SQL> describe employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select employee_id, last_name, salary, (salary*0.155)+salary from employees;

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        100 King                           24000                 27720          
        101 Kochhar                        17000                 19635          
        102 De Haan                        17000                 19635          
        103 Hunold                          9000                 10395          
        104 Ernst                           6000                  6930          
        105 Austin                          4800                  5544          
        106 Pataballa                       4800                  5544          
        107 Lorentz                         4200                  4851          
        108 Greenberg                      12008              13869.24          
        109 Faviet                          9000                 10395          
        110 Chen                            8200                  9471          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        111 Sciarra                         7700                8893.5          
        112 Urman                           7800                  9009          
        113 Popp                            6900                7969.5          
        114 Raphaely                       11000                 12705          
        115 Khoo                            3100                3580.5          
        116 Baida                           2900                3349.5          
        117 Tobias                          2800                  3234          
        118 Himuro                          2600                  3003          
        119 Colmenares                      2500                2887.5          
        120 Weiss                           8000                  9240          
        121 Fripp                           8200                  9471          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        122 Kaufling                        7900                9124.5          
        123 Vollman                         6500                7507.5          
        124 Mourgos                         5800                  6699          
        125 Nayer                           3200                  3696          
        126 Mikkilineni                     2700                3118.5          
        127 Landry                          2400                  2772          
        128 Markle                          2200                  2541          
        129 Bissot                          3300                3811.5          
        130 Atkinson                        2800                  3234          
        131 Marlow                          2500                2887.5          
        132 Olson                           2100                2425.5          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        133 Mallin                          3300                3811.5          
        134 Rogers                          2900                3349.5          
        135 Gee                             2400                  2772          
        136 Philtanker                      2200                  2541          
        137 Ladwig                          3600                  4158          
        138 Stiles                          3200                  3696          
        139 Seo                             2700                3118.5          
        140 Patel                           2500                2887.5          
        141 Rajs                            3500                4042.5          
        142 Davies                          3100                3580.5          
        143 Matos                           2600                  3003          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        144 Vargas                          2500                2887.5          
        145 Russell                        14000                 16170          
        146 Partners                       13500               15592.5          
        147 Errazuriz                      12000                 13860          
        148 Cambrault                      11000                 12705          
        149 Zlotkey                        10500               12127.5          
        150 Tucker                         10000                 11550          
        151 Bernstein                       9500               10972.5          
        152 Hall                            9000                 10395          
        153 Olsen                           8000                  9240          
        154 Cambrault                       7500                8662.5          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        155 Tuvault                         7000                  8085          
        156 King                           10000                 11550          
        157 Sully                           9500               10972.5          
        158 McEwen                          9000                 10395          
        159 Smith                           8000                  9240          
        160 Doran                           7500                8662.5          
        161 Sewall                          7000                  8085          
        162 Vishney                        10500               12127.5          
        163 Greene                          9500               10972.5          
        164 Marvins                         7200                  8316          
        165 Lee                             6800                  7854          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        166 Ande                            6400                  7392          
        167 Banda                           6200                  7161          
        168 Ozer                           11500               13282.5          
        169 Bloom                          10000                 11550          
        170 Fox                             9600                 11088          
        171 Smith                           7400                  8547          
        172 Bates                           7300                8431.5          
        173 Kumar                           6100                7045.5          
        174 Abel                           11000                 12705          
        175 Hutton                          8800                 10164          
        176 Taylor                          8600                  9933          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        177 Livingston                      8400                  9702          
        178 Grant                           7000                  8085          
        179 Johnson                         6200                  7161          
        180 Taylor                          3200                  3696          
        181 Fleaur                          3100                3580.5          
        182 Sullivan                        2500                2887.5          
        183 Geoni                           2800                  3234          
        184 Sarchand                        4200                  4851          
        185 Bull                            4100                4735.5          
        186 Dellinger                       3400                  3927          
        187 Cabrio                          3000                  3465          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        188 Chung                           3800                  4389          
        189 Dilly                           3600                  4158          
        190 Gates                           2900                3349.5          
        191 Perkins                         2500                2887.5          
        192 Bell                            4000                  4620          
        193 Everett                         3900                4504.5          
        194 McCain                          3200                  3696          
        195 Jones                           2800                  3234          
        196 Walsh                           3100                3580.5          
        197 Feeney                          3000                  3465          
        198 OConnell                        2600                  3003          

EMPLOYEE_ID LAST_NAME                     SALARY (SALARY*0.155)+SALARY          
----------- ------------------------- ---------- ---------------------          
        199 Grant                           2600                  3003          
        200 Whalen                          4400                  5082          
        201 Hartstein                      13000                 15015          
        202 Fay                             6000                  6930          
        203 Mavris                          6500                7507.5          
        204 Baer                           10000                 11550          
        205 Higgins                        12008              13869.24          
        206 Gietz                           8300                9586.5          

107 rows selected.

SQL> select employee_id, last_name, salary, (salary*0.155)+salary "New Salary" from employees;

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        100 King                           24000      27720                     
        101 Kochhar                        17000      19635                     
        102 De Haan                        17000      19635                     
        103 Hunold                          9000      10395                     
        104 Ernst                           6000       6930                     
        105 Austin                          4800       5544                     
        106 Pataballa                       4800       5544                     
        107 Lorentz                         4200       4851                     
        108 Greenberg                      12008   13869.24                     
        109 Faviet                          9000      10395                     
        110 Chen                            8200       9471                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        111 Sciarra                         7700     8893.5                     
        112 Urman                           7800       9009                     
        113 Popp                            6900     7969.5                     
        114 Raphaely                       11000      12705                     
        115 Khoo                            3100     3580.5                     
        116 Baida                           2900     3349.5                     
        117 Tobias                          2800       3234                     
        118 Himuro                          2600       3003                     
        119 Colmenares                      2500     2887.5                     
        120 Weiss                           8000       9240                     
        121 Fripp                           8200       9471                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        122 Kaufling                        7900     9124.5                     
        123 Vollman                         6500     7507.5                     
        124 Mourgos                         5800       6699                     
        125 Nayer                           3200       3696                     
        126 Mikkilineni                     2700     3118.5                     
        127 Landry                          2400       2772                     
        128 Markle                          2200       2541                     
        129 Bissot                          3300     3811.5                     
        130 Atkinson                        2800       3234                     
        131 Marlow                          2500     2887.5                     
        132 Olson                           2100     2425.5                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        133 Mallin                          3300     3811.5                     
        134 Rogers                          2900     3349.5                     
        135 Gee                             2400       2772                     
        136 Philtanker                      2200       2541                     
        137 Ladwig                          3600       4158                     
        138 Stiles                          3200       3696                     
        139 Seo                             2700     3118.5                     
        140 Patel                           2500     2887.5                     
        141 Rajs                            3500     4042.5                     
        142 Davies                          3100     3580.5                     
        143 Matos                           2600       3003                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        144 Vargas                          2500     2887.5                     
        145 Russell                        14000      16170                     
        146 Partners                       13500    15592.5                     
        147 Errazuriz                      12000      13860                     
        148 Cambrault                      11000      12705                     
        149 Zlotkey                        10500    12127.5                     
        150 Tucker                         10000      11550                     
        151 Bernstein                       9500    10972.5                     
        152 Hall                            9000      10395                     
        153 Olsen                           8000       9240                     
        154 Cambrault                       7500     8662.5                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        155 Tuvault                         7000       8085                     
        156 King                           10000      11550                     
        157 Sully                           9500    10972.5                     
        158 McEwen                          9000      10395                     
        159 Smith                           8000       9240                     
        160 Doran                           7500     8662.5                     
        161 Sewall                          7000       8085                     
        162 Vishney                        10500    12127.5                     
        163 Greene                          9500    10972.5                     
        164 Marvins                         7200       8316                     
        165 Lee                             6800       7854                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        166 Ande                            6400       7392                     
        167 Banda                           6200       7161                     
        168 Ozer                           11500    13282.5                     
        169 Bloom                          10000      11550                     
        170 Fox                             9600      11088                     
        171 Smith                           7400       8547                     
        172 Bates                           7300     8431.5                     
        173 Kumar                           6100     7045.5                     
        174 Abel                           11000      12705                     
        175 Hutton                          8800      10164                     
        176 Taylor                          8600       9933                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        177 Livingston                      8400       9702                     
        178 Grant                           7000       8085                     
        179 Johnson                         6200       7161                     
        180 Taylor                          3200       3696                     
        181 Fleaur                          3100     3580.5                     
        182 Sullivan                        2500     2887.5                     
        183 Geoni                           2800       3234                     
        184 Sarchand                        4200       4851                     
        185 Bull                            4100     4735.5                     
        186 Dellinger                       3400       3927                     
        187 Cabrio                          3000       3465                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        188 Chung                           3800       4389                     
        189 Dilly                           3600       4158                     
        190 Gates                           2900     3349.5                     
        191 Perkins                         2500     2887.5                     
        192 Bell                            4000       4620                     
        193 Everett                         3900     4504.5                     
        194 McCain                          3200       3696                     
        195 Jones                           2800       3234                     
        196 Walsh                           3100     3580.5                     
        197 Feeney                          3000       3465                     
        198 OConnell                        2600       3003                     

EMPLOYEE_ID LAST_NAME                     SALARY New Salary                     
----------- ------------------------- ---------- ----------                     
        199 Grant                           2600       3003                     
        200 Whalen                          4400       5082                     
        201 Hartstein                      13000      15015                     
        202 Fay                             6000       6930                     
        203 Mavris                          6500     7507.5                     
        204 Baer                           10000      11550                     
        205 Higgins                        12008   13869.24                     
        206 Gietz                           8300     9586.5                     

107 rows selected.

SQL> select employee_id, last_name, salary, (salary*0.155)+salary "New Salary",(salary*0.155) "Increase" from employees;

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        100 King                           24000      27720       3720          
        101 Kochhar                        17000      19635       2635          
        102 De Haan                        17000      19635       2635          
        103 Hunold                          9000      10395       1395          
        104 Ernst                           6000       6930        930          
        105 Austin                          4800       5544        744          
        106 Pataballa                       4800       5544        744          
        107 Lorentz                         4200       4851        651          
        108 Greenberg                      12008   13869.24    1861.24          
        109 Faviet                          9000      10395       1395          
        110 Chen                            8200       9471       1271          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        111 Sciarra                         7700     8893.5     1193.5          
        112 Urman                           7800       9009       1209          
        113 Popp                            6900     7969.5     1069.5          
        114 Raphaely                       11000      12705       1705          
        115 Khoo                            3100     3580.5      480.5          
        116 Baida                           2900     3349.5      449.5          
        117 Tobias                          2800       3234        434          
        118 Himuro                          2600       3003        403          
        119 Colmenares                      2500     2887.5      387.5          
        120 Weiss                           8000       9240       1240          
        121 Fripp                           8200       9471       1271          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        122 Kaufling                        7900     9124.5     1224.5          
        123 Vollman                         6500     7507.5     1007.5          
        124 Mourgos                         5800       6699        899          
        125 Nayer                           3200       3696        496          
        126 Mikkilineni                     2700     3118.5      418.5          
        127 Landry                          2400       2772        372          
        128 Markle                          2200       2541        341          
        129 Bissot                          3300     3811.5      511.5          
        130 Atkinson                        2800       3234        434          
        131 Marlow                          2500     2887.5      387.5          
        132 Olson                           2100     2425.5      325.5          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        133 Mallin                          3300     3811.5      511.5          
        134 Rogers                          2900     3349.5      449.5          
        135 Gee                             2400       2772        372          
        136 Philtanker                      2200       2541        341          
        137 Ladwig                          3600       4158        558          
        138 Stiles                          3200       3696        496          
        139 Seo                             2700     3118.5      418.5          
        140 Patel                           2500     2887.5      387.5          
        141 Rajs                            3500     4042.5      542.5          
        142 Davies                          3100     3580.5      480.5          
        143 Matos                           2600       3003        403          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        144 Vargas                          2500     2887.5      387.5          
        145 Russell                        14000      16170       2170          
        146 Partners                       13500    15592.5     2092.5          
        147 Errazuriz                      12000      13860       1860          
        148 Cambrault                      11000      12705       1705          
        149 Zlotkey                        10500    12127.5     1627.5          
        150 Tucker                         10000      11550       1550          
        151 Bernstein                       9500    10972.5     1472.5          
        152 Hall                            9000      10395       1395          
        153 Olsen                           8000       9240       1240          
        154 Cambrault                       7500     8662.5     1162.5          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        155 Tuvault                         7000       8085       1085          
        156 King                           10000      11550       1550          
        157 Sully                           9500    10972.5     1472.5          
        158 McEwen                          9000      10395       1395          
        159 Smith                           8000       9240       1240          
        160 Doran                           7500     8662.5     1162.5          
        161 Sewall                          7000       8085       1085          
        162 Vishney                        10500    12127.5     1627.5          
        163 Greene                          9500    10972.5     1472.5          
        164 Marvins                         7200       8316       1116          
        165 Lee                             6800       7854       1054          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        166 Ande                            6400       7392        992          
        167 Banda                           6200       7161        961          
        168 Ozer                           11500    13282.5     1782.5          
        169 Bloom                          10000      11550       1550          
        170 Fox                             9600      11088       1488          
        171 Smith                           7400       8547       1147          
        172 Bates                           7300     8431.5     1131.5          
        173 Kumar                           6100     7045.5      945.5          
        174 Abel                           11000      12705       1705          
        175 Hutton                          8800      10164       1364          
        176 Taylor                          8600       9933       1333          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        177 Livingston                      8400       9702       1302          
        178 Grant                           7000       8085       1085          
        179 Johnson                         6200       7161        961          
        180 Taylor                          3200       3696        496          
        181 Fleaur                          3100     3580.5      480.5          
        182 Sullivan                        2500     2887.5      387.5          
        183 Geoni                           2800       3234        434          
        184 Sarchand                        4200       4851        651          
        185 Bull                            4100     4735.5      635.5          
        186 Dellinger                       3400       3927        527          
        187 Cabrio                          3000       3465        465          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        188 Chung                           3800       4389        589          
        189 Dilly                           3600       4158        558          
        190 Gates                           2900     3349.5      449.5          
        191 Perkins                         2500     2887.5      387.5          
        192 Bell                            4000       4620        620          
        193 Everett                         3900     4504.5      604.5          
        194 McCain                          3200       3696        496          
        195 Jones                           2800       3234        434          
        196 Walsh                           3100     3580.5      480.5          
        197 Feeney                          3000       3465        465          
        198 OConnell                        2600       3003        403          

EMPLOYEE_ID LAST_NAME                     SALARY New Salary   Increase          
----------- ------------------------- ---------- ---------- ----------          
        199 Grant                           2600       3003        403          
        200 Whalen                          4400       5082        682          
        201 Hartstein                      13000      15015       2015          
        202 Fay                             6000       6930        930          
        203 Mavris                          6500     7507.5     1007.5          
        204 Baer                           10000      11550       1550          
        205 Higgins                        12008   13869.24    1861.24          
        206 Gietz                           8300     9586.5     1286.5          

107 rows selected.

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[J][A][M]');

no rows selected

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[JAM]');

no rows selected

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[J]');

no rows selected

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[j]');

Last Name                     Length                                            
------------------------- ----------                                            
Johnson                            7                                            
Jones                              5                                            

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[jam]');

Last Name                     Length                                            
------------------------- ----------                                            
Abel                               4                                            
Ande                               4                                            
Atkinson                           8                                            
Austin                             6                                            
Johnson                            7                                            
Jones                              5                                            
Mallin                             6                                            
Markle                             6                                            
Marlow                             6                                            
Marvins                            7                                            
Matos                              5                                            

Last Name                     Length                                            
------------------------- ----------                                            
Mavris                             6                                            
Mccain                             6                                            
Mcewen                             6                                            
Mikkilineni                       11                                            
Mourgos                            7                                            

16 rows selected.

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[&letter]');
Enter value for letter: h
old   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[&letter]')
new   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[h]')

Last Name                     Length                                            
------------------------- ----------                                            
Hall                               4                                            
Hartstein                          9                                            
Higgins                            7                                            
Himuro                             6                                            
Hunold                             6                                            
Hutton                             6                                            

6 rows selected.

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[lower(&letter)]');
Enter value for letter: H
old   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[lower(&letter)]')
new   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),'^[lower(H)]')

Last Name                     Length                                            
------------------------- ----------                                            
Ernst                              5                                            
Errazuriz                          9                                            
Everett                            7                                            
Ladwig                             6                                            
Landry                             6                                            
Lee                                3                                            
Livingston                        10                                            
Lorentz                            7                                            
Oconnell                           8                                            
Olsen                              5                                            
Olson                              5                                            

Last Name                     Length                                            
------------------------- ----------                                            
Ozer                               4                                            
Rajs                               4                                            
Raphaely                           8                                            
Rogers                             6                                            
Russell                            7                                            
Walsh                              5                                            
Weiss                              5                                            
Whalen                             6                                            

19 rows selected.

SQL> select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),lower('^[&letter]'));
Enter value for letter: H
old   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),lower('^[&letter]'))
new   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),lower('^[H]'))

Last Name                     Length                                            
------------------------- ----------                                            
Hall                               4                                            
Hartstein                          9                                            
Higgins                            7                                            
Himuro                             6                                            
Hunold                             6                                            
Hutton                             6                                            

6 rows selected.

SQL> /
Enter value for letter: h
old   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),lower('^[&letter]'))
new   1: select initcap(last_name) "Last Name", length(last_name) "Length" from employees where regexp_like(lower(last_name),lower('^[h]'))

Last Name                     Length                                            
------------------------- ----------                                            
Hall                               4                                            
Hartstein                          9                                            
Higgins                            7                                            
Himuro                             6                                            
Hunold                             6                                            
Hutton                             6                                            

6 rows selected.

SQL> select last_name, round(months_betweeen(current_date,hire_date)) months_workedfrom employees order by months_worked;
select last_name, round(months_betweeen(current_date,hire_date)) months_workedfrom employees order by months_worked
                                                                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select last_name, round(months_betweeen(current_date,hire_date)) months_worked from employees order by months_worked;
select last_name, round(months_betweeen(current_date,hire_date)) months_worked from employees order by months_worked
                        *
ERROR at line 1:
ORA-00904: "MONTHS_BETWEEEN": invalid identifier 


SQL> select last_name, round(months_betweeen(current_date,hire_date)) months_worked from employees order by round(months_betweeen(current_date,hire_date));
select last_name, round(months_betweeen(current_date,hire_date)) months_worked from employees order by round(months_betweeen(current_date,hire_date))
                                                                                                             *
ERROR at line 1:
ORA-00904: "MONTHS_BETWEEEN": invalid identifier 


SQL> select last_name, round(months_between(current_date,hire_date)) months_worked from employees order by months_worked;

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Kumar                               149                                         
Ande                                149                                         
Banda                               149                                         
Lee                                 150                                         
Markle                              150                                         
Marvins                             151                                         
Philtanker                          151                                         
Geoni                               151                                         
Zlotkey                             151                                         
Grant                               152                                         
Johnson                             152                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Gee                                 153                                         
Popp                                153                                         
Perkins                             153                                         
Tuvault                             153                                         
Mourgos                             154                                         
Cambrault                           155                                         
Colmenares                          157                                         
Grant                               159                                         
OConnell                            159                                         
Sullivan                            159                                         
Ernst                               160                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Bates                               161                                         
Olson                               161                                         
Jones                               162                                         
Smith                               162                                         
Greene                              162                                         
Lorentz                             163                                         
Cabrio                              163                                         
Landry                              164                                         
Cambrault                           165                                         
Sewall                              166                                         
Himuro                              166                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Mikkilineni                         167                                         
Rogers                              168                                         
Dellinger                           170                                         
Vargas                              170                                         
McCain                              170                                         
Gates                               170                                         
Feeney                              171                                         
Walsh                               172                                         
Livingston                          172                                         
Taylor                              173                                         
Bloom                               173                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Olsen                               173                                         
Patel                               173                                         
Fleaur                              174                                         
Matos                               174                                         
Urman                               174                                         
Taylor                              175                                         
Fox                                 175                                         
Seo                                 175                                         
Pataballa                           175                                         
Baida                               176                                         
Hunold                              176                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Doran                               177                                         
Atkinson                            178                                         
Vishney                             178                                         
Stiles                              178                                         
Chen                                179                                         
Vollman                             179                                         
Sciarra                             179                                         
Kochhar                             180                                         
Dilly                               181                                         
Fay                                 181                                         
Hall                                181                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Bissot                              181                                         
Tobias                              181                                         
Nayer                               182                                         
Austin                              182                                         
Chung                               183                                         
Bernstein                           185                                         
Fripp                               185                                         
Hutton                              186                                         
Everett                             186                                         
Ozer                                186                                         
Smith                               186                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Errazuriz                           186                                         
Bull                                187                                         
Tucker                              187                                         
Davies                              187                                         
Marlow                              187                                         
Partners                            188                                         
Russell                             191                                         
McEwen                              193                                         
Weiss                               194                                         
Mallin                              195                                         
Abel                                196                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Sully                               198                                         
Sarchand                            199                                         
King                                199                                         
Hartstein                           199                                         
Bell                                199                                         
Rajs                                203                                         
Whalen                              204                                         
Ladwig                              206                                         
King                                207                                         
Khoo                                208                                         
Kaufling                            208                                         

LAST_NAME                 MONTHS_WORKED                                         
------------------------- -------------                                         
Raphaely                            213                                         
Faviet                              217                                         
Greenberg                           217                                         
Gietz                               219                                         
Higgins                             219                                         
Mavris                              219                                         
Baer                                219                                         
De Haan                             236                                         

107 rows selected.

SQL> select last_name || " earns "||salary||" monthly but wants "|| salary*3 "Dream Salaries" from employees;
select last_name || " earns "||salary||" monthly but wants "|| salary*3 "Dream Salaries" from employees
                                       *
ERROR at line 1:
ORA-00904: " monthly but wants ": invalid identifier 


SQL> select last_name || ' earns '||salary||' monthly but wants '|| salary*3 "Dream Salaries" from employees;

Dream Salaries                                                                  
--------------------------------------------------------------------------------
King earns 24000 monthly but wants 72000                                        
Kochhar earns 17000 monthly but wants 51000                                     
De Haan earns 17000 monthly but wants 51000                                     
Hunold earns 9000 monthly but wants 27000                                       
Ernst earns 6000 monthly but wants 18000                                        
Austin earns 4800 monthly but wants 14400                                       
Pataballa earns 4800 monthly but wants 14400                                    
Lorentz earns 4200 monthly but wants 12600                                      
Greenberg earns 12008 monthly but wants 36024                                   
Faviet earns 9000 monthly but wants 27000                                       
Chen earns 8200 monthly but wants 24600                                         

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Sciarra earns 7700 monthly but wants 23100                                      
Urman earns 7800 monthly but wants 23400                                        
Popp earns 6900 monthly but wants 20700                                         
Raphaely earns 11000 monthly but wants 33000                                    
Khoo earns 3100 monthly but wants 9300                                          
Baida earns 2900 monthly but wants 8700                                         
Tobias earns 2800 monthly but wants 8400                                        
Himuro earns 2600 monthly but wants 7800                                        
Colmenares earns 2500 monthly but wants 7500                                    
Weiss earns 8000 monthly but wants 24000                                        
Fripp earns 8200 monthly but wants 24600                                        

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Kaufling earns 7900 monthly but wants 23700                                     
Vollman earns 6500 monthly but wants 19500                                      
Mourgos earns 5800 monthly but wants 17400                                      
Nayer earns 3200 monthly but wants 9600                                         
Mikkilineni earns 2700 monthly but wants 8100                                   
Landry earns 2400 monthly but wants 7200                                        
Markle earns 2200 monthly but wants 6600                                        
Bissot earns 3300 monthly but wants 9900                                        
Atkinson earns 2800 monthly but wants 8400                                      
Marlow earns 2500 monthly but wants 7500                                        
Olson earns 2100 monthly but wants 6300                                         

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Mallin earns 3300 monthly but wants 9900                                        
Rogers earns 2900 monthly but wants 8700                                        
Gee earns 2400 monthly but wants 7200                                           
Philtanker earns 2200 monthly but wants 6600                                    
Ladwig earns 3600 monthly but wants 10800                                       
Stiles earns 3200 monthly but wants 9600                                        
Seo earns 2700 monthly but wants 8100                                           
Patel earns 2500 monthly but wants 7500                                         
Rajs earns 3500 monthly but wants 10500                                         
Davies earns 3100 monthly but wants 9300                                        
Matos earns 2600 monthly but wants 7800                                         

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Vargas earns 2500 monthly but wants 7500                                        
Russell earns 14000 monthly but wants 42000                                     
Partners earns 13500 monthly but wants 40500                                    
Errazuriz earns 12000 monthly but wants 36000                                   
Cambrault earns 11000 monthly but wants 33000                                   
Zlotkey earns 10500 monthly but wants 31500                                     
Tucker earns 10000 monthly but wants 30000                                      
Bernstein earns 9500 monthly but wants 28500                                    
Hall earns 9000 monthly but wants 27000                                         
Olsen earns 8000 monthly but wants 24000                                        
Cambrault earns 7500 monthly but wants 22500                                    

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Tuvault earns 7000 monthly but wants 21000                                      
King earns 10000 monthly but wants 30000                                        
Sully earns 9500 monthly but wants 28500                                        
McEwen earns 9000 monthly but wants 27000                                       
Smith earns 8000 monthly but wants 24000                                        
Doran earns 7500 monthly but wants 22500                                        
Sewall earns 7000 monthly but wants 21000                                       
Vishney earns 10500 monthly but wants 31500                                     
Greene earns 9500 monthly but wants 28500                                       
Marvins earns 7200 monthly but wants 21600                                      
Lee earns 6800 monthly but wants 20400                                          

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Ande earns 6400 monthly but wants 19200                                         
Banda earns 6200 monthly but wants 18600                                        
Ozer earns 11500 monthly but wants 34500                                        
Bloom earns 10000 monthly but wants 30000                                       
Fox earns 9600 monthly but wants 28800                                          
Smith earns 7400 monthly but wants 22200                                        
Bates earns 7300 monthly but wants 21900                                        
Kumar earns 6100 monthly but wants 18300                                        
Abel earns 11000 monthly but wants 33000                                        
Hutton earns 8800 monthly but wants 26400                                       
Taylor earns 8600 monthly but wants 25800                                       

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Livingston earns 8400 monthly but wants 25200                                   
Grant earns 7000 monthly but wants 21000                                        
Johnson earns 6200 monthly but wants 18600                                      
Taylor earns 3200 monthly but wants 9600                                        
Fleaur earns 3100 monthly but wants 9300                                        
Sullivan earns 2500 monthly but wants 7500                                      
Geoni earns 2800 monthly but wants 8400                                         
Sarchand earns 4200 monthly but wants 12600                                     
Bull earns 4100 monthly but wants 12300                                         
Dellinger earns 3400 monthly but wants 10200                                    
Cabrio earns 3000 monthly but wants 9000                                        

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Chung earns 3800 monthly but wants 11400                                        
Dilly earns 3600 monthly but wants 10800                                        
Gates earns 2900 monthly but wants 8700                                         
Perkins earns 2500 monthly but wants 7500                                       
Bell earns 4000 monthly but wants 12000                                         
Everett earns 3900 monthly but wants 11700                                      
McCain earns 3200 monthly but wants 9600                                        
Jones earns 2800 monthly but wants 8400                                         
Walsh earns 3100 monthly but wants 9300                                         
Feeney earns 3000 monthly but wants 9000                                        
OConnell earns 2600 monthly but wants 7800                                      

Dream Salaries                                                                  
--------------------------------------------------------------------------------
Grant earns 2600 monthly but wants 7800                                         
Whalen earns 4400 monthly but wants 13200                                       
Hartstein earns 13000 monthly but wants 39000                                   
Fay earns 6000 monthly but wants 18000                                          
Mavris earns 6500 monthly but wants 19500                                       
Baer earns 10000 monthly but wants 30000                                        
Higgins earns 12008 monthly but wants 36024                                     
Gietz earns 8300 monthly but wants 24900                                        

107 rows selected.

SQL> select last_name, lpad(salary,15,$) from employees;
select last_name, lpad(salary,15,$) from employees
                                 *
ERROR at line 1:
ORA-00911: invalid character 


SQL> select last_name, lpad(salary,15,'$') from employees;

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
King                                                                            
$$$$$$$$$$24000                                                                 
                                                                                
Kochhar                                                                         
$$$$$$$$$$17000                                                                 
                                                                                
De Haan                                                                         
$$$$$$$$$$17000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Hunold                                                                          
$$$$$$$$$$$9000                                                                 
                                                                                
Ernst                                                                           
$$$$$$$$$$$6000                                                                 
                                                                                
Austin                                                                          
$$$$$$$$$$$4800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Pataballa                                                                       
$$$$$$$$$$$4800                                                                 
                                                                                
Lorentz                                                                         
$$$$$$$$$$$4200                                                                 
                                                                                
Greenberg                                                                       
$$$$$$$$$$12008                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Faviet                                                                          
$$$$$$$$$$$9000                                                                 
                                                                                
Chen                                                                            
$$$$$$$$$$$8200                                                                 
                                                                                
Sciarra                                                                         
$$$$$$$$$$$7700                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Urman                                                                           
$$$$$$$$$$$7800                                                                 
                                                                                
Popp                                                                            
$$$$$$$$$$$6900                                                                 
                                                                                
Raphaely                                                                        
$$$$$$$$$$11000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Khoo                                                                            
$$$$$$$$$$$3100                                                                 
                                                                                
Baida                                                                           
$$$$$$$$$$$2900                                                                 
                                                                                
Tobias                                                                          
$$$$$$$$$$$2800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Himuro                                                                          
$$$$$$$$$$$2600                                                                 
                                                                                
Colmenares                                                                      
$$$$$$$$$$$2500                                                                 
                                                                                
Weiss                                                                           
$$$$$$$$$$$8000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Fripp                                                                           
$$$$$$$$$$$8200                                                                 
                                                                                
Kaufling                                                                        
$$$$$$$$$$$7900                                                                 
                                                                                
Vollman                                                                         
$$$$$$$$$$$6500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Mourgos                                                                         
$$$$$$$$$$$5800                                                                 
                                                                                
Nayer                                                                           
$$$$$$$$$$$3200                                                                 
                                                                                
Mikkilineni                                                                     
$$$$$$$$$$$2700                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Landry                                                                          
$$$$$$$$$$$2400                                                                 
                                                                                
Markle                                                                          
$$$$$$$$$$$2200                                                                 
                                                                                
Bissot                                                                          
$$$$$$$$$$$3300                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Atkinson                                                                        
$$$$$$$$$$$2800                                                                 
                                                                                
Marlow                                                                          
$$$$$$$$$$$2500                                                                 
                                                                                
Olson                                                                           
$$$$$$$$$$$2100                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Mallin                                                                          
$$$$$$$$$$$3300                                                                 
                                                                                
Rogers                                                                          
$$$$$$$$$$$2900                                                                 
                                                                                
Gee                                                                             
$$$$$$$$$$$2400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Philtanker                                                                      
$$$$$$$$$$$2200                                                                 
                                                                                
Ladwig                                                                          
$$$$$$$$$$$3600                                                                 
                                                                                
Stiles                                                                          
$$$$$$$$$$$3200                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Seo                                                                             
$$$$$$$$$$$2700                                                                 
                                                                                
Patel                                                                           
$$$$$$$$$$$2500                                                                 
                                                                                
Rajs                                                                            
$$$$$$$$$$$3500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Davies                                                                          
$$$$$$$$$$$3100                                                                 
                                                                                
Matos                                                                           
$$$$$$$$$$$2600                                                                 
                                                                                
Vargas                                                                          
$$$$$$$$$$$2500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Russell                                                                         
$$$$$$$$$$14000                                                                 
                                                                                
Partners                                                                        
$$$$$$$$$$13500                                                                 
                                                                                
Errazuriz                                                                       
$$$$$$$$$$12000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Cambrault                                                                       
$$$$$$$$$$11000                                                                 
                                                                                
Zlotkey                                                                         
$$$$$$$$$$10500                                                                 
                                                                                
Tucker                                                                          
$$$$$$$$$$10000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Bernstein                                                                       
$$$$$$$$$$$9500                                                                 
                                                                                
Hall                                                                            
$$$$$$$$$$$9000                                                                 
                                                                                
Olsen                                                                           
$$$$$$$$$$$8000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Cambrault                                                                       
$$$$$$$$$$$7500                                                                 
                                                                                
Tuvault                                                                         
$$$$$$$$$$$7000                                                                 
                                                                                
King                                                                            
$$$$$$$$$$10000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Sully                                                                           
$$$$$$$$$$$9500                                                                 
                                                                                
McEwen                                                                          
$$$$$$$$$$$9000                                                                 
                                                                                
Smith                                                                           
$$$$$$$$$$$8000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Doran                                                                           
$$$$$$$$$$$7500                                                                 
                                                                                
Sewall                                                                          
$$$$$$$$$$$7000                                                                 
                                                                                
Vishney                                                                         
$$$$$$$$$$10500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Greene                                                                          
$$$$$$$$$$$9500                                                                 
                                                                                
Marvins                                                                         
$$$$$$$$$$$7200                                                                 
                                                                                
Lee                                                                             
$$$$$$$$$$$6800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Ande                                                                            
$$$$$$$$$$$6400                                                                 
                                                                                
Banda                                                                           
$$$$$$$$$$$6200                                                                 
                                                                                
Ozer                                                                            
$$$$$$$$$$11500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Bloom                                                                           
$$$$$$$$$$10000                                                                 
                                                                                
Fox                                                                             
$$$$$$$$$$$9600                                                                 
                                                                                
Smith                                                                           
$$$$$$$$$$$7400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Bates                                                                           
$$$$$$$$$$$7300                                                                 
                                                                                
Kumar                                                                           
$$$$$$$$$$$6100                                                                 
                                                                                
Abel                                                                            
$$$$$$$$$$11000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Hutton                                                                          
$$$$$$$$$$$8800                                                                 
                                                                                
Taylor                                                                          
$$$$$$$$$$$8600                                                                 
                                                                                
Livingston                                                                      
$$$$$$$$$$$8400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Grant                                                                           
$$$$$$$$$$$7000                                                                 
                                                                                
Johnson                                                                         
$$$$$$$$$$$6200                                                                 
                                                                                
Taylor                                                                          
$$$$$$$$$$$3200                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Fleaur                                                                          
$$$$$$$$$$$3100                                                                 
                                                                                
Sullivan                                                                        
$$$$$$$$$$$2500                                                                 
                                                                                
Geoni                                                                           
$$$$$$$$$$$2800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Sarchand                                                                        
$$$$$$$$$$$4200                                                                 
                                                                                
Bull                                                                            
$$$$$$$$$$$4100                                                                 
                                                                                
Dellinger                                                                       
$$$$$$$$$$$3400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Cabrio                                                                          
$$$$$$$$$$$3000                                                                 
                                                                                
Chung                                                                           
$$$$$$$$$$$3800                                                                 
                                                                                
Dilly                                                                           
$$$$$$$$$$$3600                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Gates                                                                           
$$$$$$$$$$$2900                                                                 
                                                                                
Perkins                                                                         
$$$$$$$$$$$2500                                                                 
                                                                                
Bell                                                                            
$$$$$$$$$$$4000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Everett                                                                         
$$$$$$$$$$$3900                                                                 
                                                                                
McCain                                                                          
$$$$$$$$$$$3200                                                                 
                                                                                
Jones                                                                           
$$$$$$$$$$$2800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Walsh                                                                           
$$$$$$$$$$$3100                                                                 
                                                                                
Feeney                                                                          
$$$$$$$$$$$3000                                                                 
                                                                                
OConnell                                                                        
$$$$$$$$$$$2600                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Grant                                                                           
$$$$$$$$$$$2600                                                                 
                                                                                
Whalen                                                                          
$$$$$$$$$$$4400                                                                 
                                                                                
Hartstein                                                                       
$$$$$$$$$$13000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Fay                                                                             
$$$$$$$$$$$6000                                                                 
                                                                                
Mavris                                                                          
$$$$$$$$$$$6500                                                                 
                                                                                
Baer                                                                            
$$$$$$$$$$10000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
LPAD(SALARY,15,'$')                                                             
------------------------------------------------------------                    
Higgins                                                                         
$$$$$$$$$$12008                                                                 
                                                                                
Gietz                                                                           
$$$$$$$$$$$8300                                                                 
                                                                                

107 rows selected.

SQL> select last_name, lpad(salary,15,'$') salary from employees;

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
King                                                                            
$$$$$$$$$$24000                                                                 
                                                                                
Kochhar                                                                         
$$$$$$$$$$17000                                                                 
                                                                                
De Haan                                                                         
$$$$$$$$$$17000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Hunold                                                                          
$$$$$$$$$$$9000                                                                 
                                                                                
Ernst                                                                           
$$$$$$$$$$$6000                                                                 
                                                                                
Austin                                                                          
$$$$$$$$$$$4800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Pataballa                                                                       
$$$$$$$$$$$4800                                                                 
                                                                                
Lorentz                                                                         
$$$$$$$$$$$4200                                                                 
                                                                                
Greenberg                                                                       
$$$$$$$$$$12008                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Faviet                                                                          
$$$$$$$$$$$9000                                                                 
                                                                                
Chen                                                                            
$$$$$$$$$$$8200                                                                 
                                                                                
Sciarra                                                                         
$$$$$$$$$$$7700                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Urman                                                                           
$$$$$$$$$$$7800                                                                 
                                                                                
Popp                                                                            
$$$$$$$$$$$6900                                                                 
                                                                                
Raphaely                                                                        
$$$$$$$$$$11000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Khoo                                                                            
$$$$$$$$$$$3100                                                                 
                                                                                
Baida                                                                           
$$$$$$$$$$$2900                                                                 
                                                                                
Tobias                                                                          
$$$$$$$$$$$2800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Himuro                                                                          
$$$$$$$$$$$2600                                                                 
                                                                                
Colmenares                                                                      
$$$$$$$$$$$2500                                                                 
                                                                                
Weiss                                                                           
$$$$$$$$$$$8000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Fripp                                                                           
$$$$$$$$$$$8200                                                                 
                                                                                
Kaufling                                                                        
$$$$$$$$$$$7900                                                                 
                                                                                
Vollman                                                                         
$$$$$$$$$$$6500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Mourgos                                                                         
$$$$$$$$$$$5800                                                                 
                                                                                
Nayer                                                                           
$$$$$$$$$$$3200                                                                 
                                                                                
Mikkilineni                                                                     
$$$$$$$$$$$2700                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Landry                                                                          
$$$$$$$$$$$2400                                                                 
                                                                                
Markle                                                                          
$$$$$$$$$$$2200                                                                 
                                                                                
Bissot                                                                          
$$$$$$$$$$$3300                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Atkinson                                                                        
$$$$$$$$$$$2800                                                                 
                                                                                
Marlow                                                                          
$$$$$$$$$$$2500                                                                 
                                                                                
Olson                                                                           
$$$$$$$$$$$2100                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Mallin                                                                          
$$$$$$$$$$$3300                                                                 
                                                                                
Rogers                                                                          
$$$$$$$$$$$2900                                                                 
                                                                                
Gee                                                                             
$$$$$$$$$$$2400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Philtanker                                                                      
$$$$$$$$$$$2200                                                                 
                                                                                
Ladwig                                                                          
$$$$$$$$$$$3600                                                                 
                                                                                
Stiles                                                                          
$$$$$$$$$$$3200                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Seo                                                                             
$$$$$$$$$$$2700                                                                 
                                                                                
Patel                                                                           
$$$$$$$$$$$2500                                                                 
                                                                                
Rajs                                                                            
$$$$$$$$$$$3500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Davies                                                                          
$$$$$$$$$$$3100                                                                 
                                                                                
Matos                                                                           
$$$$$$$$$$$2600                                                                 
                                                                                
Vargas                                                                          
$$$$$$$$$$$2500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Russell                                                                         
$$$$$$$$$$14000                                                                 
                                                                                
Partners                                                                        
$$$$$$$$$$13500                                                                 
                                                                                
Errazuriz                                                                       
$$$$$$$$$$12000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Cambrault                                                                       
$$$$$$$$$$11000                                                                 
                                                                                
Zlotkey                                                                         
$$$$$$$$$$10500                                                                 
                                                                                
Tucker                                                                          
$$$$$$$$$$10000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Bernstein                                                                       
$$$$$$$$$$$9500                                                                 
                                                                                
Hall                                                                            
$$$$$$$$$$$9000                                                                 
                                                                                
Olsen                                                                           
$$$$$$$$$$$8000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Cambrault                                                                       
$$$$$$$$$$$7500                                                                 
                                                                                
Tuvault                                                                         
$$$$$$$$$$$7000                                                                 
                                                                                
King                                                                            
$$$$$$$$$$10000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Sully                                                                           
$$$$$$$$$$$9500                                                                 
                                                                                
McEwen                                                                          
$$$$$$$$$$$9000                                                                 
                                                                                
Smith                                                                           
$$$$$$$$$$$8000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Doran                                                                           
$$$$$$$$$$$7500                                                                 
                                                                                
Sewall                                                                          
$$$$$$$$$$$7000                                                                 
                                                                                
Vishney                                                                         
$$$$$$$$$$10500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Greene                                                                          
$$$$$$$$$$$9500                                                                 
                                                                                
Marvins                                                                         
$$$$$$$$$$$7200                                                                 
                                                                                
Lee                                                                             
$$$$$$$$$$$6800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Ande                                                                            
$$$$$$$$$$$6400                                                                 
                                                                                
Banda                                                                           
$$$$$$$$$$$6200                                                                 
                                                                                
Ozer                                                                            
$$$$$$$$$$11500                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Bloom                                                                           
$$$$$$$$$$10000                                                                 
                                                                                
Fox                                                                             
$$$$$$$$$$$9600                                                                 
                                                                                
Smith                                                                           
$$$$$$$$$$$7400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Bates                                                                           
$$$$$$$$$$$7300                                                                 
                                                                                
Kumar                                                                           
$$$$$$$$$$$6100                                                                 
                                                                                
Abel                                                                            
$$$$$$$$$$11000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Hutton                                                                          
$$$$$$$$$$$8800                                                                 
                                                                                
Taylor                                                                          
$$$$$$$$$$$8600                                                                 
                                                                                
Livingston                                                                      
$$$$$$$$$$$8400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Grant                                                                           
$$$$$$$$$$$7000                                                                 
                                                                                
Johnson                                                                         
$$$$$$$$$$$6200                                                                 
                                                                                
Taylor                                                                          
$$$$$$$$$$$3200                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Fleaur                                                                          
$$$$$$$$$$$3100                                                                 
                                                                                
Sullivan                                                                        
$$$$$$$$$$$2500                                                                 
                                                                                
Geoni                                                                           
$$$$$$$$$$$2800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Sarchand                                                                        
$$$$$$$$$$$4200                                                                 
                                                                                
Bull                                                                            
$$$$$$$$$$$4100                                                                 
                                                                                
Dellinger                                                                       
$$$$$$$$$$$3400                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Cabrio                                                                          
$$$$$$$$$$$3000                                                                 
                                                                                
Chung                                                                           
$$$$$$$$$$$3800                                                                 
                                                                                
Dilly                                                                           
$$$$$$$$$$$3600                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Gates                                                                           
$$$$$$$$$$$2900                                                                 
                                                                                
Perkins                                                                         
$$$$$$$$$$$2500                                                                 
                                                                                
Bell                                                                            
$$$$$$$$$$$4000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Everett                                                                         
$$$$$$$$$$$3900                                                                 
                                                                                
McCain                                                                          
$$$$$$$$$$$3200                                                                 
                                                                                
Jones                                                                           
$$$$$$$$$$$2800                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Walsh                                                                           
$$$$$$$$$$$3100                                                                 
                                                                                
Feeney                                                                          
$$$$$$$$$$$3000                                                                 
                                                                                
OConnell                                                                        
$$$$$$$$$$$2600                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Grant                                                                           
$$$$$$$$$$$2600                                                                 
                                                                                
Whalen                                                                          
$$$$$$$$$$$4400                                                                 
                                                                                
Hartstein                                                                       
$$$$$$$$$$13000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Fay                                                                             
$$$$$$$$$$$6000                                                                 
                                                                                
Mavris                                                                          
$$$$$$$$$$$6500                                                                 
                                                                                
Baer                                                                            
$$$$$$$$$$10000                                                                 
                                                                                

LAST_NAME                                                                       
-------------------------                                                       
SALARY                                                                          
------------------------------------------------------------                    
Higgins                                                                         
$$$$$$$$$$12008                                                                 
                                                                                
Gietz                                                                           
$$$$$$$$$$$8300                                                                 
                                                                                

107 rows selected.

SQL> select last_name, hire_date, next_day(add_months(hire_date,6),'Monday') review from employees;

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
King                      17-JUN-03 22-DEC-03                                   
Kochhar                   21-SEP-05 27-MAR-06                                   
De Haan                   13-JAN-01 16-JUL-01                                   
Hunold                    03-JAN-06 10-JUL-06                                   
Ernst                     21-MAY-07 26-NOV-07                                   
Austin                    25-JUN-05 26-DEC-05                                   
Pataballa                 05-FEB-06 07-AUG-06                                   
Lorentz                   07-FEB-07 13-AUG-07                                   
Greenberg                 17-AUG-02 24-FEB-03                                   
Faviet                    16-AUG-02 17-FEB-03                                   
Chen                      28-SEP-05 03-APR-06                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Sciarra                   30-SEP-05 03-APR-06                                   
Urman                     07-MAR-06 11-SEP-06                                   
Popp                      07-DEC-07 09-JUN-08                                   
Raphaely                  07-DEC-02 09-JUN-03                                   
Khoo                      18-MAY-03 24-NOV-03                                   
Baida                     24-DEC-05 26-JUN-06                                   
Tobias                    24-JUL-05 30-JAN-06                                   
Himuro                    15-NOV-06 21-MAY-07                                   
Colmenares                10-AUG-07 11-FEB-08                                   
Weiss                     18-JUL-04 24-JAN-05                                   
Fripp                     10-APR-05 17-OCT-05                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Kaufling                  01-MAY-03 03-NOV-03                                   
Vollman                   10-OCT-05 17-APR-06                                   
Mourgos                   16-NOV-07 19-MAY-08                                   
Nayer                     16-JUL-05 23-JAN-06                                   
Mikkilineni               28-SEP-06 02-APR-07                                   
Landry                    14-JAN-07 16-JUL-07                                   
Markle                    08-MAR-08 15-SEP-08                                   
Bissot                    20-AUG-05 27-FEB-06                                   
Atkinson                  30-OCT-05 01-MAY-06                                   
Marlow                    16-FEB-05 22-AUG-05                                   
Olson                     10-APR-07 15-OCT-07                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Mallin                    14-JUN-04 20-DEC-04                                   
Rogers                    26-AUG-06 05-MAR-07                                   
Gee                       12-DEC-07 16-JUN-08                                   
Philtanker                06-FEB-08 11-AUG-08                                   
Ladwig                    14-JUL-03 19-JAN-04                                   
Stiles                    26-OCT-05 01-MAY-06                                   
Seo                       12-FEB-06 14-AUG-06                                   
Patel                     06-APR-06 09-OCT-06                                   
Rajs                      17-OCT-03 19-APR-04                                   
Davies                    29-JAN-05 01-AUG-05                                   
Matos                     15-MAR-06 18-SEP-06                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Vargas                    09-JUL-06 15-JAN-07                                   
Russell                   01-OCT-04 04-APR-05                                   
Partners                  05-JAN-05 11-JUL-05                                   
Errazuriz                 10-MAR-05 12-SEP-05                                   
Cambrault                 15-OCT-07 21-APR-08                                   
Zlotkey                   29-JAN-08 04-AUG-08                                   
Tucker                    30-JAN-05 01-AUG-05                                   
Bernstein                 24-MAR-05 26-SEP-05                                   
Hall                      20-AUG-05 27-FEB-06                                   
Olsen                     30-MAR-06 02-OCT-06                                   
Cambrault                 09-DEC-06 11-JUN-07                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Tuvault                   23-NOV-07 26-MAY-08                                   
King                      30-JAN-04 02-AUG-04                                   
Sully                     04-MAR-04 06-SEP-04                                   
McEwen                    01-AUG-04 07-FEB-05                                   
Smith                     10-MAR-05 12-SEP-05                                   
Doran                     15-DEC-05 19-JUN-06                                   
Sewall                    03-NOV-06 07-MAY-07                                   
Vishney                   11-NOV-05 15-MAY-06                                   
Greene                    19-MAR-07 24-SEP-07                                   
Marvins                   24-JAN-08 28-JUL-08                                   
Lee                       23-FEB-08 25-AUG-08                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Ande                      24-MAR-08 29-SEP-08                                   
Banda                     21-APR-08 27-OCT-08                                   
Ozer                      11-MAR-05 12-SEP-05                                   
Bloom                     23-MAR-06 25-SEP-06                                   
Fox                       24-JAN-06 31-JUL-06                                   
Smith                     23-FEB-07 27-AUG-07                                   
Bates                     24-MAR-07 01-OCT-07                                   
Kumar                     21-APR-08 27-OCT-08                                   
Abel                      11-MAY-04 15-NOV-04                                   
Hutton                    19-MAR-05 26-SEP-05                                   
Taylor                    24-MAR-06 25-SEP-06                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Livingston                23-APR-06 30-OCT-06                                   
Grant                     24-MAY-07 26-NOV-07                                   
Johnson                   04-JAN-08 07-JUL-08                                   
Taylor                    24-JAN-06 31-JUL-06                                   
Fleaur                    23-FEB-06 28-AUG-06                                   
Sullivan                  21-JUN-07 24-DEC-07                                   
Geoni                     03-FEB-08 04-AUG-08                                   
Sarchand                  27-JAN-04 02-AUG-04                                   
Bull                      20-FEB-05 22-AUG-05                                   
Dellinger                 24-JUN-06 25-DEC-06                                   
Cabrio                    07-FEB-07 13-AUG-07                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Chung                     14-JUN-05 19-DEC-05                                   
Dilly                     13-AUG-05 20-FEB-06                                   
Gates                     11-JUL-06 15-JAN-07                                   
Perkins                   19-DEC-07 23-JUN-08                                   
Bell                      04-FEB-04 09-AUG-04                                   
Everett                   03-MAR-05 05-SEP-05                                   
McCain                    01-JUL-06 08-JAN-07                                   
Jones                     17-MAR-07 24-SEP-07                                   
Walsh                     24-APR-06 30-OCT-06                                   
Feeney                    23-MAY-06 27-NOV-06                                   
OConnell                  21-JUN-07 24-DEC-07                                   

LAST_NAME                 HIRE_DATE REVIEW                                      
------------------------- --------- ---------                                   
Grant                     13-JAN-08 14-JUL-08                                   
Whalen                    17-SEP-03 22-MAR-04                                   
Hartstein                 17-FEB-04 23-AUG-04                                   
Fay                       17-AUG-05 20-FEB-06                                   
Mavris                    07-JUN-02 09-DEC-02                                   
Baer                      07-JUN-02 09-DEC-02                                   
Higgins                   07-JUN-02 09-DEC-02                                   
Gietz                     07-JUN-02 09-DEC-02                                   

107 rows selected.

SQL> select last_name, hire_date, to_char(next_day(add_months(hire_date,6),'Monday'),'day,ddspth,yyyy') review from employees;

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
King                      17-JUN-03                                             
monday   ,twenty-second,2003                                                    
                                                                                
Kochhar                   21-SEP-05                                             
monday   ,twenty-seventh,2006                                                   
                                                                                
De Haan                   13-JAN-01                                             
monday   ,sixteenth,2001                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Hunold                    03-JAN-06                                             
monday   ,tenth,2006                                                            
                                                                                
Ernst                     21-MAY-07                                             
monday   ,twenty-sixth,2007                                                     
                                                                                
Austin                    25-JUN-05                                             
monday   ,twenty-sixth,2005                                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Pataballa                 05-FEB-06                                             
monday   ,seventh,2006                                                          
                                                                                
Lorentz                   07-FEB-07                                             
monday   ,thirteenth,2007                                                       
                                                                                
Greenberg                 17-AUG-02                                             
monday   ,twenty-fourth,2003                                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Faviet                    16-AUG-02                                             
monday   ,seventeenth,2003                                                      
                                                                                
Chen                      28-SEP-05                                             
monday   ,third,2006                                                            
                                                                                
Sciarra                   30-SEP-05                                             
monday   ,third,2006                                                            
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Urman                     07-MAR-06                                             
monday   ,eleventh,2006                                                         
                                                                                
Popp                      07-DEC-07                                             
monday   ,ninth,2008                                                            
                                                                                
Raphaely                  07-DEC-02                                             
monday   ,ninth,2003                                                            
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Khoo                      18-MAY-03                                             
monday   ,twenty-fourth,2003                                                    
                                                                                
Baida                     24-DEC-05                                             
monday   ,twenty-sixth,2006                                                     
                                                                                
Tobias                    24-JUL-05                                             
monday   ,thirtieth,2006                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Himuro                    15-NOV-06                                             
monday   ,twenty-first,2007                                                     
                                                                                
Colmenares                10-AUG-07                                             
monday   ,eleventh,2008                                                         
                                                                                
Weiss                     18-JUL-04                                             
monday   ,twenty-fourth,2005                                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Fripp                     10-APR-05                                             
monday   ,seventeenth,2005                                                      
                                                                                
Kaufling                  01-MAY-03                                             
monday   ,third,2003                                                            
                                                                                
Vollman                   10-OCT-05                                             
monday   ,seventeenth,2006                                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Mourgos                   16-NOV-07                                             
monday   ,nineteenth,2008                                                       
                                                                                
Nayer                     16-JUL-05                                             
monday   ,twenty-third,2006                                                     
                                                                                
Mikkilineni               28-SEP-06                                             
monday   ,second,2007                                                           
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Landry                    14-JAN-07                                             
monday   ,sixteenth,2007                                                        
                                                                                
Markle                    08-MAR-08                                             
monday   ,fifteenth,2008                                                        
                                                                                
Bissot                    20-AUG-05                                             
monday   ,twenty-seventh,2006                                                   
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Atkinson                  30-OCT-05                                             
monday   ,first,2006                                                            
                                                                                
Marlow                    16-FEB-05                                             
monday   ,twenty-second,2005                                                    
                                                                                
Olson                     10-APR-07                                             
monday   ,fifteenth,2007                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Mallin                    14-JUN-04                                             
monday   ,twentieth,2004                                                        
                                                                                
Rogers                    26-AUG-06                                             
monday   ,fifth,2007                                                            
                                                                                
Gee                       12-DEC-07                                             
monday   ,sixteenth,2008                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Philtanker                06-FEB-08                                             
monday   ,eleventh,2008                                                         
                                                                                
Ladwig                    14-JUL-03                                             
monday   ,nineteenth,2004                                                       
                                                                                
Stiles                    26-OCT-05                                             
monday   ,first,2006                                                            
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Seo                       12-FEB-06                                             
monday   ,fourteenth,2006                                                       
                                                                                
Patel                     06-APR-06                                             
monday   ,ninth,2006                                                            
                                                                                
Rajs                      17-OCT-03                                             
monday   ,nineteenth,2004                                                       
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Davies                    29-JAN-05                                             
monday   ,first,2005                                                            
                                                                                
Matos                     15-MAR-06                                             
monday   ,eighteenth,2006                                                       
                                                                                
Vargas                    09-JUL-06                                             
monday   ,fifteenth,2007                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Russell                   01-OCT-04                                             
monday   ,fourth,2005                                                           
                                                                                
Partners                  05-JAN-05                                             
monday   ,eleventh,2005                                                         
                                                                                
Errazuriz                 10-MAR-05                                             
monday   ,twelfth,2005                                                          
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Cambrault                 15-OCT-07                                             
monday   ,twenty-first,2008                                                     
                                                                                
Zlotkey                   29-JAN-08                                             
monday   ,fourth,2008                                                           
                                                                                
Tucker                    30-JAN-05                                             
monday   ,first,2005                                                            
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Bernstein                 24-MAR-05                                             
monday   ,twenty-sixth,2005                                                     
                                                                                
Hall                      20-AUG-05                                             
monday   ,twenty-seventh,2006                                                   
                                                                                
Olsen                     30-MAR-06                                             
monday   ,second,2006                                                           
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Cambrault                 09-DEC-06                                             
monday   ,eleventh,2007                                                         
                                                                                
Tuvault                   23-NOV-07                                             
monday   ,twenty-sixth,2008                                                     
                                                                                
King                      30-JAN-04                                             
monday   ,second,2004                                                           
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Sully                     04-MAR-04                                             
monday   ,sixth,2004                                                            
                                                                                
McEwen                    01-AUG-04                                             
monday   ,seventh,2005                                                          
                                                                                
Smith                     10-MAR-05                                             
monday   ,twelfth,2005                                                          
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Doran                     15-DEC-05                                             
monday   ,nineteenth,2006                                                       
                                                                                
Sewall                    03-NOV-06                                             
monday   ,seventh,2007                                                          
                                                                                
Vishney                   11-NOV-05                                             
monday   ,fifteenth,2006                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Greene                    19-MAR-07                                             
monday   ,twenty-fourth,2007                                                    
                                                                                
Marvins                   24-JAN-08                                             
monday   ,twenty-eighth,2008                                                    
                                                                                
Lee                       23-FEB-08                                             
monday   ,twenty-fifth,2008                                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Ande                      24-MAR-08                                             
monday   ,twenty-ninth,2008                                                     
                                                                                
Banda                     21-APR-08                                             
monday   ,twenty-seventh,2008                                                   
                                                                                
Ozer                      11-MAR-05                                             
monday   ,twelfth,2005                                                          
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Bloom                     23-MAR-06                                             
monday   ,twenty-fifth,2006                                                     
                                                                                
Fox                       24-JAN-06                                             
monday   ,thirty-first,2006                                                     
                                                                                
Smith                     23-FEB-07                                             
monday   ,twenty-seventh,2007                                                   
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Bates                     24-MAR-07                                             
monday   ,first,2007                                                            
                                                                                
Kumar                     21-APR-08                                             
monday   ,twenty-seventh,2008                                                   
                                                                                
Abel                      11-MAY-04                                             
monday   ,fifteenth,2004                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Hutton                    19-MAR-05                                             
monday   ,twenty-sixth,2005                                                     
                                                                                
Taylor                    24-MAR-06                                             
monday   ,twenty-fifth,2006                                                     
                                                                                
Livingston                23-APR-06                                             
monday   ,thirtieth,2006                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Grant                     24-MAY-07                                             
monday   ,twenty-sixth,2007                                                     
                                                                                
Johnson                   04-JAN-08                                             
monday   ,seventh,2008                                                          
                                                                                
Taylor                    24-JAN-06                                             
monday   ,thirty-first,2006                                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Fleaur                    23-FEB-06                                             
monday   ,twenty-eighth,2006                                                    
                                                                                
Sullivan                  21-JUN-07                                             
monday   ,twenty-fourth,2007                                                    
                                                                                
Geoni                     03-FEB-08                                             
monday   ,fourth,2008                                                           
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Sarchand                  27-JAN-04                                             
monday   ,second,2004                                                           
                                                                                
Bull                      20-FEB-05                                             
monday   ,twenty-second,2005                                                    
                                                                                
Dellinger                 24-JUN-06                                             
monday   ,twenty-fifth,2006                                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Cabrio                    07-FEB-07                                             
monday   ,thirteenth,2007                                                       
                                                                                
Chung                     14-JUN-05                                             
monday   ,nineteenth,2005                                                       
                                                                                
Dilly                     13-AUG-05                                             
monday   ,twentieth,2006                                                        
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Gates                     11-JUL-06                                             
monday   ,fifteenth,2007                                                        
                                                                                
Perkins                   19-DEC-07                                             
monday   ,twenty-third,2008                                                     
                                                                                
Bell                      04-FEB-04                                             
monday   ,ninth,2004                                                            
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Everett                   03-MAR-05                                             
monday   ,fifth,2005                                                            
                                                                                
McCain                    01-JUL-06                                             
monday   ,eighth,2007                                                           
                                                                                
Jones                     17-MAR-07                                             
monday   ,twenty-fourth,2007                                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Walsh                     24-APR-06                                             
monday   ,thirtieth,2006                                                        
                                                                                
Feeney                    23-MAY-06                                             
monday   ,twenty-seventh,2006                                                   
                                                                                
OConnell                  21-JUN-07                                             
monday   ,twenty-fourth,2007                                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Grant                     13-JAN-08                                             
monday   ,fourteenth,2008                                                       
                                                                                
Whalen                    17-SEP-03                                             
monday   ,twenty-second,2004                                                    
                                                                                
Hartstein                 17-FEB-04                                             
monday   ,twenty-third,2004                                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Fay                       17-AUG-05                                             
monday   ,twentieth,2006                                                        
                                                                                
Mavris                    07-JUN-02                                             
monday   ,ninth,2002                                                            
                                                                                
Baer                      07-JUN-02                                             
monday   ,ninth,2002                                                            
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------                        
Higgins                   07-JUN-02                                             
monday   ,ninth,2002                                                            
                                                                                
Gietz                     07-JUN-02                                             
monday   ,ninth,2002                                                            
                                                                                

107 rows selected.

SQL> select last_name, hire_date, to_char(next_day(add_months(hire_date,6),'Monday'),'day,ddspth of month,yyyy') review from employees;
select last_name, hire_date, to_char(next_day(add_months(hire_date,6),'Monday'),'day,ddspth of month,yyyy') review from employees
                                                                                *
ERROR at line 1:
ORA-01821: date format not recognized 


SQL> select last_name, hire_date, to_char(next_day(add_months(hire_date,6),'Monday'),'day," the " Ddspth " of "  Month,yyyy') review from employees;

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
King                      17-JUN-03                                             
monday   , the  Twenty-Second  of   December ,2003                              
                                                                                
Kochhar                   21-SEP-05                                             
monday   , the  Twenty-Seventh  of   March    ,2006                             
                                                                                
De Haan                   13-JAN-01                                             
monday   , the  Sixteenth  of   July     ,2001                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Hunold                    03-JAN-06                                             
monday   , the  Tenth  of   July     ,2006                                      
                                                                                
Ernst                     21-MAY-07                                             
monday   , the  Twenty-Sixth  of   November ,2007                               
                                                                                
Austin                    25-JUN-05                                             
monday   , the  Twenty-Sixth  of   December ,2005                               
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Pataballa                 05-FEB-06                                             
monday   , the  Seventh  of   August   ,2006                                    
                                                                                
Lorentz                   07-FEB-07                                             
monday   , the  Thirteenth  of   August   ,2007                                 
                                                                                
Greenberg                 17-AUG-02                                             
monday   , the  Twenty-Fourth  of   February ,2003                              
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Faviet                    16-AUG-02                                             
monday   , the  Seventeenth  of   February ,2003                                
                                                                                
Chen                      28-SEP-05                                             
monday   , the  Third  of   April    ,2006                                      
                                                                                
Sciarra                   30-SEP-05                                             
monday   , the  Third  of   April    ,2006                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Urman                     07-MAR-06                                             
monday   , the  Eleventh  of   September,2006                                   
                                                                                
Popp                      07-DEC-07                                             
monday   , the  Ninth  of   June     ,2008                                      
                                                                                
Raphaely                  07-DEC-02                                             
monday   , the  Ninth  of   June     ,2003                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Khoo                      18-MAY-03                                             
monday   , the  Twenty-Fourth  of   November ,2003                              
                                                                                
Baida                     24-DEC-05                                             
monday   , the  Twenty-Sixth  of   June     ,2006                               
                                                                                
Tobias                    24-JUL-05                                             
monday   , the  Thirtieth  of   January  ,2006                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Himuro                    15-NOV-06                                             
monday   , the  Twenty-First  of   May      ,2007                               
                                                                                
Colmenares                10-AUG-07                                             
monday   , the  Eleventh  of   February ,2008                                   
                                                                                
Weiss                     18-JUL-04                                             
monday   , the  Twenty-Fourth  of   January  ,2005                              
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Fripp                     10-APR-05                                             
monday   , the  Seventeenth  of   October  ,2005                                
                                                                                
Kaufling                  01-MAY-03                                             
monday   , the  Third  of   November ,2003                                      
                                                                                
Vollman                   10-OCT-05                                             
monday   , the  Seventeenth  of   April    ,2006                                
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Mourgos                   16-NOV-07                                             
monday   , the  Nineteenth  of   May      ,2008                                 
                                                                                
Nayer                     16-JUL-05                                             
monday   , the  Twenty-Third  of   January  ,2006                               
                                                                                
Mikkilineni               28-SEP-06                                             
monday   , the  Second  of   April    ,2007                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Landry                    14-JAN-07                                             
monday   , the  Sixteenth  of   July     ,2007                                  
                                                                                
Markle                    08-MAR-08                                             
monday   , the  Fifteenth  of   September,2008                                  
                                                                                
Bissot                    20-AUG-05                                             
monday   , the  Twenty-Seventh  of   February ,2006                             
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Atkinson                  30-OCT-05                                             
monday   , the  First  of   May      ,2006                                      
                                                                                
Marlow                    16-FEB-05                                             
monday   , the  Twenty-Second  of   August   ,2005                              
                                                                                
Olson                     10-APR-07                                             
monday   , the  Fifteenth  of   October  ,2007                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Mallin                    14-JUN-04                                             
monday   , the  Twentieth  of   December ,2004                                  
                                                                                
Rogers                    26-AUG-06                                             
monday   , the  Fifth  of   March    ,2007                                      
                                                                                
Gee                       12-DEC-07                                             
monday   , the  Sixteenth  of   June     ,2008                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Philtanker                06-FEB-08                                             
monday   , the  Eleventh  of   August   ,2008                                   
                                                                                
Ladwig                    14-JUL-03                                             
monday   , the  Nineteenth  of   January  ,2004                                 
                                                                                
Stiles                    26-OCT-05                                             
monday   , the  First  of   May      ,2006                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Seo                       12-FEB-06                                             
monday   , the  Fourteenth  of   August   ,2006                                 
                                                                                
Patel                     06-APR-06                                             
monday   , the  Ninth  of   October  ,2006                                      
                                                                                
Rajs                      17-OCT-03                                             
monday   , the  Nineteenth  of   April    ,2004                                 
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Davies                    29-JAN-05                                             
monday   , the  First  of   August   ,2005                                      
                                                                                
Matos                     15-MAR-06                                             
monday   , the  Eighteenth  of   September,2006                                 
                                                                                
Vargas                    09-JUL-06                                             
monday   , the  Fifteenth  of   January  ,2007                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Russell                   01-OCT-04                                             
monday   , the  Fourth  of   April    ,2005                                     
                                                                                
Partners                  05-JAN-05                                             
monday   , the  Eleventh  of   July     ,2005                                   
                                                                                
Errazuriz                 10-MAR-05                                             
monday   , the  Twelfth  of   September,2005                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Cambrault                 15-OCT-07                                             
monday   , the  Twenty-First  of   April    ,2008                               
                                                                                
Zlotkey                   29-JAN-08                                             
monday   , the  Fourth  of   August   ,2008                                     
                                                                                
Tucker                    30-JAN-05                                             
monday   , the  First  of   August   ,2005                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Bernstein                 24-MAR-05                                             
monday   , the  Twenty-Sixth  of   September,2005                               
                                                                                
Hall                      20-AUG-05                                             
monday   , the  Twenty-Seventh  of   February ,2006                             
                                                                                
Olsen                     30-MAR-06                                             
monday   , the  Second  of   October  ,2006                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Cambrault                 09-DEC-06                                             
monday   , the  Eleventh  of   June     ,2007                                   
                                                                                
Tuvault                   23-NOV-07                                             
monday   , the  Twenty-Sixth  of   May      ,2008                               
                                                                                
King                      30-JAN-04                                             
monday   , the  Second  of   August   ,2004                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Sully                     04-MAR-04                                             
monday   , the  Sixth  of   September,2004                                      
                                                                                
McEwen                    01-AUG-04                                             
monday   , the  Seventh  of   February ,2005                                    
                                                                                
Smith                     10-MAR-05                                             
monday   , the  Twelfth  of   September,2005                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Doran                     15-DEC-05                                             
monday   , the  Nineteenth  of   June     ,2006                                 
                                                                                
Sewall                    03-NOV-06                                             
monday   , the  Seventh  of   May      ,2007                                    
                                                                                
Vishney                   11-NOV-05                                             
monday   , the  Fifteenth  of   May      ,2006                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Greene                    19-MAR-07                                             
monday   , the  Twenty-Fourth  of   September,2007                              
                                                                                
Marvins                   24-JAN-08                                             
monday   , the  Twenty-Eighth  of   July     ,2008                              
                                                                                
Lee                       23-FEB-08                                             
monday   , the  Twenty-Fifth  of   August   ,2008                               
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Ande                      24-MAR-08                                             
monday   , the  Twenty-Ninth  of   September,2008                               
                                                                                
Banda                     21-APR-08                                             
monday   , the  Twenty-Seventh  of   October  ,2008                             
                                                                                
Ozer                      11-MAR-05                                             
monday   , the  Twelfth  of   September,2005                                    
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Bloom                     23-MAR-06                                             
monday   , the  Twenty-Fifth  of   September,2006                               
                                                                                
Fox                       24-JAN-06                                             
monday   , the  Thirty-First  of   July     ,2006                               
                                                                                
Smith                     23-FEB-07                                             
monday   , the  Twenty-Seventh  of   August   ,2007                             
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Bates                     24-MAR-07                                             
monday   , the  First  of   October  ,2007                                      
                                                                                
Kumar                     21-APR-08                                             
monday   , the  Twenty-Seventh  of   October  ,2008                             
                                                                                
Abel                      11-MAY-04                                             
monday   , the  Fifteenth  of   November ,2004                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Hutton                    19-MAR-05                                             
monday   , the  Twenty-Sixth  of   September,2005                               
                                                                                
Taylor                    24-MAR-06                                             
monday   , the  Twenty-Fifth  of   September,2006                               
                                                                                
Livingston                23-APR-06                                             
monday   , the  Thirtieth  of   October  ,2006                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Grant                     24-MAY-07                                             
monday   , the  Twenty-Sixth  of   November ,2007                               
                                                                                
Johnson                   04-JAN-08                                             
monday   , the  Seventh  of   July     ,2008                                    
                                                                                
Taylor                    24-JAN-06                                             
monday   , the  Thirty-First  of   July     ,2006                               
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Fleaur                    23-FEB-06                                             
monday   , the  Twenty-Eighth  of   August   ,2006                              
                                                                                
Sullivan                  21-JUN-07                                             
monday   , the  Twenty-Fourth  of   December ,2007                              
                                                                                
Geoni                     03-FEB-08                                             
monday   , the  Fourth  of   August   ,2008                                     
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Sarchand                  27-JAN-04                                             
monday   , the  Second  of   August   ,2004                                     
                                                                                
Bull                      20-FEB-05                                             
monday   , the  Twenty-Second  of   August   ,2005                              
                                                                                
Dellinger                 24-JUN-06                                             
monday   , the  Twenty-Fifth  of   December ,2006                               
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Cabrio                    07-FEB-07                                             
monday   , the  Thirteenth  of   August   ,2007                                 
                                                                                
Chung                     14-JUN-05                                             
monday   , the  Nineteenth  of   December ,2005                                 
                                                                                
Dilly                     13-AUG-05                                             
monday   , the  Twentieth  of   February ,2006                                  
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Gates                     11-JUL-06                                             
monday   , the  Fifteenth  of   January  ,2007                                  
                                                                                
Perkins                   19-DEC-07                                             
monday   , the  Twenty-Third  of   June     ,2008                               
                                                                                
Bell                      04-FEB-04                                             
monday   , the  Ninth  of   August   ,2004                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Everett                   03-MAR-05                                             
monday   , the  Fifth  of   September,2005                                      
                                                                                
McCain                    01-JUL-06                                             
monday   , the  Eighth  of   January  ,2007                                     
                                                                                
Jones                     17-MAR-07                                             
monday   , the  Twenty-Fourth  of   September,2007                              
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Walsh                     24-APR-06                                             
monday   , the  Thirtieth  of   October  ,2006                                  
                                                                                
Feeney                    23-MAY-06                                             
monday   , the  Twenty-Seventh  of   November ,2006                             
                                                                                
OConnell                  21-JUN-07                                             
monday   , the  Twenty-Fourth  of   December ,2007                              
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Grant                     13-JAN-08                                             
monday   , the  Fourteenth  of   July     ,2008                                 
                                                                                
Whalen                    17-SEP-03                                             
monday   , the  Twenty-Second  of   March    ,2004                              
                                                                                
Hartstein                 17-FEB-04                                             
monday   , the  Twenty-Third  of   August   ,2004                               
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Fay                       17-AUG-05                                             
monday   , the  Twentieth  of   February ,2006                                  
                                                                                
Mavris                    07-JUN-02                                             
monday   , the  Ninth  of   December ,2002                                      
                                                                                
Baer                      07-JUN-02                                             
monday   , the  Ninth  of   December ,2002                                      
                                                                                

LAST_NAME                 HIRE_DATE                                             
------------------------- ---------                                             
REVIEW                                                                          
--------------------------------------------------------------------------------
Higgins                   07-JUN-02                                             
monday   , the  Ninth  of   December ,2002                                      
                                                                                
Gietz                     07-JUN-02                                             
monday   , the  Ninth  of   December ,2002                                      
                                                                                

107 rows selected.

SQL> spool off
SQL> spool of
SQL> select to_char(round(sysdate,'day')+1,'day') from dual;

TO_CHAR(ROUND(SYSDATE,'DAY')+1,'DAY'                                            
------------------------------------                                            
monday                                                                          

SQL> select last_name, hire_date, to_char(hire_date, 'DAY') from employees order by (next_day(hire_date,'Monday')-hire_date) desc;

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Ladwig                    14-JUL-03 MONDAY                                      
Cambrault                 15-OCT-07 MONDAY                                      
Mallin                    14-JUN-04 MONDAY                                      
Ernst                     21-MAY-07 MONDAY                                      
Greene                    19-MAR-07 MONDAY                                      
Banda                     21-APR-08 MONDAY                                      
Walsh                     24-APR-06 MONDAY                                      
Ande                      24-MAR-08 MONDAY                                      
Vollman                   10-OCT-05 MONDAY                                      
Kumar                     21-APR-08 MONDAY                                      
Olson                     10-APR-07 TUESDAY                                     

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Urman                     07-MAR-06 TUESDAY                                     
Hunold                    03-JAN-06 TUESDAY                                     
King                      17-JUN-03 TUESDAY                                     
Hartstein                 17-FEB-04 TUESDAY                                     
Feeney                    23-MAY-06 TUESDAY                                     
Gates                     11-JUL-06 TUESDAY                                     
Chung                     14-JUN-05 TUESDAY                                     
Sarchand                  27-JAN-04 TUESDAY                                     
Taylor                    24-JAN-06 TUESDAY                                     
Abel                      11-MAY-04 TUESDAY                                     
Fox                       24-JAN-06 TUESDAY                                     

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Zlotkey                   29-JAN-08 TUESDAY                                     
Whalen                    17-SEP-03 WEDNESDAY                                   
Philtanker                06-FEB-08 WEDNESDAY                                   
Perkins                   19-DEC-07 WEDNESDAY                                   
Bell                      04-FEB-04 WEDNESDAY                                   
Kochhar                   21-SEP-05 WEDNESDAY                                   
Cabrio                    07-FEB-07 WEDNESDAY                                   
Chen                      28-SEP-05 WEDNESDAY                                   
Himuro                    15-NOV-06 WEDNESDAY                                   
Marlow                    16-FEB-05 WEDNESDAY                                   
Fay                       17-AUG-05 WEDNESDAY                                   

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Gee                       12-DEC-07 WEDNESDAY                                   
Partners                  05-JAN-05 WEDNESDAY                                   
Matos                     15-MAR-06 WEDNESDAY                                   
Stiles                    26-OCT-05 WEDNESDAY                                   
Lorentz                   07-FEB-07 WEDNESDAY                                   
Kaufling                  01-MAY-03 THURSDAY                                    
Mikkilineni               28-SEP-06 THURSDAY                                    
Patel                     06-APR-06 THURSDAY                                    
Errazuriz                 10-MAR-05 THURSDAY                                    
Bernstein                 24-MAR-05 THURSDAY                                    
Olsen                     30-MAR-06 THURSDAY                                    

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Sully                     04-MAR-04 THURSDAY                                    
Smith                     10-MAR-05 THURSDAY                                    
Doran                     15-DEC-05 THURSDAY                                    
Marvins                   24-JAN-08 THURSDAY                                    
Bloom                     23-MAR-06 THURSDAY                                    
Grant                     24-MAY-07 THURSDAY                                    
Fleaur                    23-FEB-06 THURSDAY                                    
Sullivan                  21-JUN-07 THURSDAY                                    
Everett                   03-MAR-05 THURSDAY                                    
OConnell                  21-JUN-07 THURSDAY                                    
Tuvault                   23-NOV-07 FRIDAY                                      

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Popp                      07-DEC-07 FRIDAY                                      
Gietz                     07-JUN-02 FRIDAY                                      
King                      30-JAN-04 FRIDAY                                      
Russell                   01-OCT-04 FRIDAY                                      
Sewall                    03-NOV-06 FRIDAY                                      
Baer                      07-JUN-02 FRIDAY                                      
Rajs                      17-OCT-03 FRIDAY                                      
Vishney                   11-NOV-05 FRIDAY                                      
Higgins                   07-JUN-02 FRIDAY                                      
Ozer                      11-MAR-05 FRIDAY                                      
Colmenares                10-AUG-07 FRIDAY                                      

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Johnson                   04-JAN-08 FRIDAY                                      
Taylor                    24-MAR-06 FRIDAY                                      
Mourgos                   16-NOV-07 FRIDAY                                      
Faviet                    16-AUG-02 FRIDAY                                      
Smith                     23-FEB-07 FRIDAY                                      
Sciarra                   30-SEP-05 FRIDAY                                      
Mavris                    07-JUN-02 FRIDAY                                      
Cambrault                 09-DEC-06 SATURDAY                                    
Hall                      20-AUG-05 SATURDAY                                    
Davies                    29-JAN-05 SATURDAY                                    
Rogers                    26-AUG-06 SATURDAY                                    

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Bissot                    20-AUG-05 SATURDAY                                    
Markle                    08-MAR-08 SATURDAY                                    
Nayer                     16-JUL-05 SATURDAY                                    
Baida                     24-DEC-05 SATURDAY                                    
Raphaely                  07-DEC-02 SATURDAY                                    
Greenberg                 17-AUG-02 SATURDAY                                    
De Haan                   13-JAN-01 SATURDAY                                    
Austin                    25-JUN-05 SATURDAY                                    
Jones                     17-MAR-07 SATURDAY                                    
McCain                    01-JUL-06 SATURDAY                                    
Dilly                     13-AUG-05 SATURDAY                                    

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Dellinger                 24-JUN-06 SATURDAY                                    
Hutton                    19-MAR-05 SATURDAY                                    
Bates                     24-MAR-07 SATURDAY                                    
Lee                       23-FEB-08 SATURDAY                                    
Pataballa                 05-FEB-06 SUNDAY                                      
Tucker                    30-JAN-05 SUNDAY                                      
Livingston                23-APR-06 SUNDAY                                      
Weiss                     18-JUL-04 SUNDAY                                      
Geoni                     03-FEB-08 SUNDAY                                      
Bull                      20-FEB-05 SUNDAY                                      
Grant                     13-JAN-08 SUNDAY                                      

LAST_NAME                 HIRE_DATE TO_CHAR(HIRE_DATE,'DAY')                    
------------------------- --------- ------------------------------------        
Khoo                      18-MAY-03 SUNDAY                                      
Landry                    14-JAN-07 SUNDAY                                      
Atkinson                  30-OCT-05 SUNDAY                                      
Tobias                    24-JUL-05 SUNDAY                                      
Seo                       12-FEB-06 SUNDAY                                      
Vargas                    09-JUL-06 SUNDAY                                      
McEwen                    01-AUG-04 SUNDAY                                      
Fripp                     10-APR-05 SUNDAY                                      

107 rows selected.

SQL> select last_name,nvl(comm,'No commission') COMM from employees;
select last_name,nvl(comm,'No commission') COMM from employees
                     *
ERROR at line 1:
ORA-00904: "COMM": invalid identifier 


SQL> select last_name,nvl(commission,'No commission') COMM from employees;
select last_name,nvl(commission,'No commission') COMM from employees
                     *
ERROR at line 1:
ORA-00904: "COMMISSION": invalid identifier 


SQL> select last_name,nvl(commissions,'No commission') COMM from employees;
select last_name,nvl(commissions,'No commission') COMM from employees
                     *
ERROR at line 1:
ORA-00904: "COMMISSIONS": invalid identifier 


SQL> desc employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select last_name,nvl(commission_pct,'No commission') COMM from employees;
select last_name,nvl(commission_pct,'No commission') COMM from employees
                                    *
ERROR at line 1:
ORA-01722: invalid number 


SQL> select last_name,nvl(commission_pct,"No commission") COMM from employees;
select last_name,nvl(commission_pct,"No commission") COMM from employees
                                    *
ERROR at line 1:
ORA-00904: "No commission": invalid identifier 


SQL> select last_name,nvl(commission_pct,No commission) COMM from employees;
select last_name,nvl(commission_pct,No commission) COMM from employees
                                       *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select last_name,nvl(commission_pct,No) COMM from employees;
select last_name,nvl(commission_pct,No) COMM from employees
                                    *
ERROR at line 1:
ORA-00904: "NO": invalid identifier 


SQL> select last_name,nvl(commission_pct,0) COMM from employees;

LAST_NAME                       COMM                                            
------------------------- ----------                                            
King                               0                                            
Kochhar                            0                                            
De Haan                            0                                            
Hunold                             0                                            
Ernst                              0                                            
Austin                             0                                            
Pataballa                          0                                            
Lorentz                            0                                            
Greenberg                          0                                            
Faviet                             0                                            
Chen                               0                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Sciarra                            0                                            
Urman                              0                                            
Popp                               0                                            
Raphaely                           0                                            
Khoo                               0                                            
Baida                              0                                            
Tobias                             0                                            
Himuro                             0                                            
Colmenares                         0                                            
Weiss                              0                                            
Fripp                              0                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Kaufling                           0                                            
Vollman                            0                                            
Mourgos                            0                                            
Nayer                              0                                            
Mikkilineni                        0                                            
Landry                             0                                            
Markle                             0                                            
Bissot                             0                                            
Atkinson                           0                                            
Marlow                             0                                            
Olson                              0                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Mallin                             0                                            
Rogers                             0                                            
Gee                                0                                            
Philtanker                         0                                            
Ladwig                             0                                            
Stiles                             0                                            
Seo                                0                                            
Patel                              0                                            
Rajs                               0                                            
Davies                             0                                            
Matos                              0                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Vargas                             0                                            
Russell                           .4                                            
Partners                          .3                                            
Errazuriz                         .3                                            
Cambrault                         .3                                            
Zlotkey                           .2                                            
Tucker                            .3                                            
Bernstein                        .25                                            
Hall                             .25                                            
Olsen                             .2                                            
Cambrault                         .2                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Tuvault                          .15                                            
King                             .35                                            
Sully                            .35                                            
McEwen                           .35                                            
Smith                             .3                                            
Doran                             .3                                            
Sewall                           .25                                            
Vishney                          .25                                            
Greene                           .15                                            
Marvins                           .1                                            
Lee                               .1                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Ande                              .1                                            
Banda                             .1                                            
Ozer                             .25                                            
Bloom                             .2                                            
Fox                               .2                                            
Smith                            .15                                            
Bates                            .15                                            
Kumar                             .1                                            
Abel                              .3                                            
Hutton                           .25                                            
Taylor                            .2                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Livingston                        .2                                            
Grant                            .15                                            
Johnson                           .1                                            
Taylor                             0                                            
Fleaur                             0                                            
Sullivan                           0                                            
Geoni                              0                                            
Sarchand                           0                                            
Bull                               0                                            
Dellinger                          0                                            
Cabrio                             0                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Chung                              0                                            
Dilly                              0                                            
Gates                              0                                            
Perkins                            0                                            
Bell                               0                                            
Everett                            0                                            
McCain                             0                                            
Jones                              0                                            
Walsh                              0                                            
Feeney                             0                                            
OConnell                           0                                            

LAST_NAME                       COMM                                            
------------------------- ----------                                            
Grant                              0                                            
Whalen                             0                                            
Hartstein                          0                                            
Fay                                0                                            
Mavris                             0                                            
Baer                               0                                            
Higgins                            0                                            
Gietz                              0                                            

107 rows selected.

SQL> select last_name, commission_pct from employees where commission_pct is not null;

LAST_NAME                 COMMISSION_PCT                                        
------------------------- --------------                                        
Russell                               .4                                        
Partners                              .3                                        
Errazuriz                             .3                                        
Cambrault                             .3                                        
Zlotkey                               .2                                        
Tucker                                .3                                        
Bernstein                            .25                                        
Hall                                 .25                                        
Olsen                                 .2                                        
Cambrault                             .2                                        
Tuvault                              .15                                        

LAST_NAME                 COMMISSION_PCT                                        
------------------------- --------------                                        
King                                 .35                                        
Sully                                .35                                        
McEwen                               .35                                        
Smith                                 .3                                        
Doran                                 .3                                        
Sewall                               .25                                        
Vishney                              .25                                        
Greene                               .15                                        
Marvins                               .1                                        
Lee                                   .1                                        
Ande                                  .1                                        

LAST_NAME                 COMMISSION_PCT                                        
------------------------- --------------                                        
Banda                                 .1                                        
Ozer                                 .25                                        
Bloom                                 .2                                        
Fox                                   .2                                        
Smith                                .15                                        
Bates                                .15                                        
Kumar                                 .1                                        
Abel                                  .3                                        
Hutton                               .25                                        
Taylor                                .2                                        
Livingston                            .2                                        

LAST_NAME                 COMMISSION_PCT                                        
------------------------- --------------                                        
Grant                                .15                                        
Johnson                               .1                                        

35 rows selected.

SQL> select last_name,nvl(to_char(commission_pct),'No commission') COMM from employees;

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
King                      No commission                                         
Kochhar                   No commission                                         
De Haan                   No commission                                         
Hunold                    No commission                                         
Ernst                     No commission                                         
Austin                    No commission                                         
Pataballa                 No commission                                         
Lorentz                   No commission                                         
Greenberg                 No commission                                         
Faviet                    No commission                                         
Chen                      No commission                                         

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Sciarra                   No commission                                         
Urman                     No commission                                         
Popp                      No commission                                         
Raphaely                  No commission                                         
Khoo                      No commission                                         
Baida                     No commission                                         
Tobias                    No commission                                         
Himuro                    No commission                                         
Colmenares                No commission                                         
Weiss                     No commission                                         
Fripp                     No commission                                         

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Kaufling                  No commission                                         
Vollman                   No commission                                         
Mourgos                   No commission                                         
Nayer                     No commission                                         
Mikkilineni               No commission                                         
Landry                    No commission                                         
Markle                    No commission                                         
Bissot                    No commission                                         
Atkinson                  No commission                                         
Marlow                    No commission                                         
Olson                     No commission                                         

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Mallin                    No commission                                         
Rogers                    No commission                                         
Gee                       No commission                                         
Philtanker                No commission                                         
Ladwig                    No commission                                         
Stiles                    No commission                                         
Seo                       No commission                                         
Patel                     No commission                                         
Rajs                      No commission                                         
Davies                    No commission                                         
Matos                     No commission                                         

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Vargas                    No commission                                         
Russell                   .4                                                    
Partners                  .3                                                    
Errazuriz                 .3                                                    
Cambrault                 .3                                                    
Zlotkey                   .2                                                    
Tucker                    .3                                                    
Bernstein                 .25                                                   
Hall                      .25                                                   
Olsen                     .2                                                    
Cambrault                 .2                                                    

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Tuvault                   .15                                                   
King                      .35                                                   
Sully                     .35                                                   
McEwen                    .35                                                   
Smith                     .3                                                    
Doran                     .3                                                    
Sewall                    .25                                                   
Vishney                   .25                                                   
Greene                    .15                                                   
Marvins                   .1                                                    
Lee                       .1                                                    

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Ande                      .1                                                    
Banda                     .1                                                    
Ozer                      .25                                                   
Bloom                     .2                                                    
Fox                       .2                                                    
Smith                     .15                                                   
Bates                     .15                                                   
Kumar                     .1                                                    
Abel                      .3                                                    
Hutton                    .25                                                   
Taylor                    .2                                                    

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Livingston                .2                                                    
Grant                     .15                                                   
Johnson                   .1                                                    
Taylor                    No commission                                         
Fleaur                    No commission                                         
Sullivan                  No commission                                         
Geoni                     No commission                                         
Sarchand                  No commission                                         
Bull                      No commission                                         
Dellinger                 No commission                                         
Cabrio                    No commission                                         

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Chung                     No commission                                         
Dilly                     No commission                                         
Gates                     No commission                                         
Perkins                   No commission                                         
Bell                      No commission                                         
Everett                   No commission                                         
McCain                    No commission                                         
Jones                     No commission                                         
Walsh                     No commission                                         
Feeney                    No commission                                         
OConnell                  No commission                                         

LAST_NAME                 COMM                                                  
------------------------- ----------------------------------------              
Grant                     No commission                                         
Whalen                    No commission                                         
Hartstein                 No commission                                         
Fay                       No commission                                         
Mavris                    No commission                                         
Baer                      No commission                                         
Higgins                   No commission                                         
Gietz                     No commission                                         

107 rows selected.

SQL> select left(last_name,8)||' '|| repeat('*',floor(salary/1000)) "EMPLOYEES_AND_THEIR_SALARIES" from employees
  2  ;
select left(last_name,8)||' '|| repeat('*',floor(salary/1000)) "EMPLOYEES_AND_THEIR_SALARIES" from employees
                                *
ERROR at line 1:
ORA-00904: "REPEAT": invalid identifier 


SQL> select rpad(last_name,8)||' '||rpad('',salary/1000+1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees;

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
King                                                                            
Kochhar                                                                         
De Haan                                                                         
Hunold                                                                          
Ernst                                                                           
Austin                                                                          
Pataball                                                                        
Lorentz                                                                         
Greenber                                                                        
Faviet                                                                          
Chen                                                                            

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Sciarra                                                                         
Urman                                                                           
Popp                                                                            
Raphaely                                                                        
Khoo                                                                            
Baida                                                                           
Tobias                                                                          
Himuro                                                                          
Colmenar                                                                        
Weiss                                                                           
Fripp                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Kaufling                                                                        
Vollman                                                                         
Mourgos                                                                         
Nayer                                                                           
Mikkilin                                                                        
Landry                                                                          
Markle                                                                          
Bissot                                                                          
Atkinson                                                                        
Marlow                                                                          
Olson                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Mallin                                                                          
Rogers                                                                          
Gee                                                                             
Philtank                                                                        
Ladwig                                                                          
Stiles                                                                          
Seo                                                                             
Patel                                                                           
Rajs                                                                            
Davies                                                                          
Matos                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Vargas                                                                          
Russell                                                                         
Partners                                                                        
Errazuri                                                                        
Cambraul                                                                        
Zlotkey                                                                         
Tucker                                                                          
Bernstei                                                                        
Hall                                                                            
Olsen                                                                           
Cambraul                                                                        

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Tuvault                                                                         
King                                                                            
Sully                                                                           
McEwen                                                                          
Smith                                                                           
Doran                                                                           
Sewall                                                                          
Vishney                                                                         
Greene                                                                          
Marvins                                                                         
Lee                                                                             

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Ande                                                                            
Banda                                                                           
Ozer                                                                            
Bloom                                                                           
Fox                                                                             
Smith                                                                           
Bates                                                                           
Kumar                                                                           
Abel                                                                            
Hutton                                                                          
Taylor                                                                          

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Livingst                                                                        
Grant                                                                           
Johnson                                                                         
Taylor                                                                          
Fleaur                                                                          
Sullivan                                                                        
Geoni                                                                           
Sarchand                                                                        
Bull                                                                            
Dellinge                                                                        
Cabrio                                                                          

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Chung                                                                           
Dilly                                                                           
Gates                                                                           
Perkins                                                                         
Bell                                                                            
Everett                                                                         
McCain                                                                          
Jones                                                                           
Walsh                                                                           
Feeney                                                                          
OConnell                                                                        

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Grant                                                                           
Whalen                                                                          
Hartstei                                                                        
Fay                                                                             
Mavris                                                                          
Baer                                                                            
Higgins                                                                         
Gietz                                                                           

107 rows selected.

SQL> select rpad(last_name,8)||' '||rpad(salary/1000+1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees;
select rpad(last_name,8)||' '||rpad(salary/1000+1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees
                                                  *
ERROR at line 1:
ORA-01722: invalid number 


SQL> select rpad(last_name,8)||' '||rpad(salary/1000+1,0,'*') EMPLOYEES_AND_THEIR_SALARIES from employees;

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
King                                                                            
Kochhar                                                                         
De Haan                                                                         
Hunold                                                                          
Ernst                                                                           
Austin                                                                          
Pataball                                                                        
Lorentz                                                                         
Greenber                                                                        
Faviet                                                                          
Chen                                                                            

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Sciarra                                                                         
Urman                                                                           
Popp                                                                            
Raphaely                                                                        
Khoo                                                                            
Baida                                                                           
Tobias                                                                          
Himuro                                                                          
Colmenar                                                                        
Weiss                                                                           
Fripp                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Kaufling                                                                        
Vollman                                                                         
Mourgos                                                                         
Nayer                                                                           
Mikkilin                                                                        
Landry                                                                          
Markle                                                                          
Bissot                                                                          
Atkinson                                                                        
Marlow                                                                          
Olson                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Mallin                                                                          
Rogers                                                                          
Gee                                                                             
Philtank                                                                        
Ladwig                                                                          
Stiles                                                                          
Seo                                                                             
Patel                                                                           
Rajs                                                                            
Davies                                                                          
Matos                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Vargas                                                                          
Russell                                                                         
Partners                                                                        
Errazuri                                                                        
Cambraul                                                                        
Zlotkey                                                                         
Tucker                                                                          
Bernstei                                                                        
Hall                                                                            
Olsen                                                                           
Cambraul                                                                        

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Tuvault                                                                         
King                                                                            
Sully                                                                           
McEwen                                                                          
Smith                                                                           
Doran                                                                           
Sewall                                                                          
Vishney                                                                         
Greene                                                                          
Marvins                                                                         
Lee                                                                             

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Ande                                                                            
Banda                                                                           
Ozer                                                                            
Bloom                                                                           
Fox                                                                             
Smith                                                                           
Bates                                                                           
Kumar                                                                           
Abel                                                                            
Hutton                                                                          
Taylor                                                                          

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Livingst                                                                        
Grant                                                                           
Johnson                                                                         
Taylor                                                                          
Fleaur                                                                          
Sullivan                                                                        
Geoni                                                                           
Sarchand                                                                        
Bull                                                                            
Dellinge                                                                        
Cabrio                                                                          

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Chung                                                                           
Dilly                                                                           
Gates                                                                           
Perkins                                                                         
Bell                                                                            
Everett                                                                         
McCain                                                                          
Jones                                                                           
Walsh                                                                           
Feeney                                                                          
OConnell                                                                        

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Grant                                                                           
Whalen                                                                          
Hartstei                                                                        
Fay                                                                             
Mavris                                                                          
Baer                                                                            
Higgins                                                                         
Gietz                                                                           

107 rows selected.

SQL> select rpad(last_name,8)||' '||rpad(salary/1000,0,'*') EMPLOYEES_AND_THEIR_SALARIES from employees;

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
King                                                                            
Kochhar                                                                         
De Haan                                                                         
Hunold                                                                          
Ernst                                                                           
Austin                                                                          
Pataball                                                                        
Lorentz                                                                         
Greenber                                                                        
Faviet                                                                          
Chen                                                                            

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Sciarra                                                                         
Urman                                                                           
Popp                                                                            
Raphaely                                                                        
Khoo                                                                            
Baida                                                                           
Tobias                                                                          
Himuro                                                                          
Colmenar                                                                        
Weiss                                                                           
Fripp                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Kaufling                                                                        
Vollman                                                                         
Mourgos                                                                         
Nayer                                                                           
Mikkilin                                                                        
Landry                                                                          
Markle                                                                          
Bissot                                                                          
Atkinson                                                                        
Marlow                                                                          
Olson                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Mallin                                                                          
Rogers                                                                          
Gee                                                                             
Philtank                                                                        
Ladwig                                                                          
Stiles                                                                          
Seo                                                                             
Patel                                                                           
Rajs                                                                            
Davies                                                                          
Matos                                                                           

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Vargas                                                                          
Russell                                                                         
Partners                                                                        
Errazuri                                                                        
Cambraul                                                                        
Zlotkey                                                                         
Tucker                                                                          
Bernstei                                                                        
Hall                                                                            
Olsen                                                                           
Cambraul                                                                        

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Tuvault                                                                         
King                                                                            
Sully                                                                           
McEwen                                                                          
Smith                                                                           
Doran                                                                           
Sewall                                                                          
Vishney                                                                         
Greene                                                                          
Marvins                                                                         
Lee                                                                             

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Ande                                                                            
Banda                                                                           
Ozer                                                                            
Bloom                                                                           
Fox                                                                             
Smith                                                                           
Bates                                                                           
Kumar                                                                           
Abel                                                                            
Hutton                                                                          
Taylor                                                                          

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Livingst                                                                        
Grant                                                                           
Johnson                                                                         
Taylor                                                                          
Fleaur                                                                          
Sullivan                                                                        
Geoni                                                                           
Sarchand                                                                        
Bull                                                                            
Dellinge                                                                        
Cabrio                                                                          

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Chung                                                                           
Dilly                                                                           
Gates                                                                           
Perkins                                                                         
Bell                                                                            
Everett                                                                         
McCain                                                                          
Jones                                                                           
Walsh                                                                           
Feeney                                                                          
OConnell                                                                        

EMPLOYEES_AND_THEIR_SALARIES                                                    
---------------------------------                                               
Grant                                                                           
Whalen                                                                          
Hartstei                                                                        
Fay                                                                             
Mavris                                                                          
Baer                                                                            
Higgins                                                                         
Gietz                                                                           

107 rows selected.

SQL> select rpad(last_name,8)||' '||rpad(salary/1000,1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees;

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
King     2                                                                      
Kochhar  1                                                                      
De Haan  1                                                                      
Hunold   9                                                                      
Ernst    6                                                                      
Austin   4                                                                      
Pataball 4                                                                      
Lorentz  4                                                                      
Greenber 1                                                                      
Faviet   9                                                                      
Chen     8                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Sciarra  7                                                                      
Urman    7                                                                      
Popp     6                                                                      
Raphaely 1                                                                      
Khoo     3                                                                      
Baida    2                                                                      
Tobias   2                                                                      
Himuro   2                                                                      
Colmenar 2                                                                      
Weiss    8                                                                      
Fripp    8                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Kaufling 7                                                                      
Vollman  6                                                                      
Mourgos  5                                                                      
Nayer    3                                                                      
Mikkilin 2                                                                      
Landry   2                                                                      
Markle   2                                                                      
Bissot   3                                                                      
Atkinson 2                                                                      
Marlow   2                                                                      
Olson    2                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Mallin   3                                                                      
Rogers   2                                                                      
Gee      2                                                                      
Philtank 2                                                                      
Ladwig   3                                                                      
Stiles   3                                                                      
Seo      2                                                                      
Patel    2                                                                      
Rajs     3                                                                      
Davies   3                                                                      
Matos    2                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Vargas   2                                                                      
Russell  1                                                                      
Partners 1                                                                      
Errazuri 1                                                                      
Cambraul 1                                                                      
Zlotkey  1                                                                      
Tucker   1                                                                      
Bernstei 9                                                                      
Hall     9                                                                      
Olsen    8                                                                      
Cambraul 7                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Tuvault  7                                                                      
King     1                                                                      
Sully    9                                                                      
McEwen   9                                                                      
Smith    8                                                                      
Doran    7                                                                      
Sewall   7                                                                      
Vishney  1                                                                      
Greene   9                                                                      
Marvins  7                                                                      
Lee      6                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Ande     6                                                                      
Banda    6                                                                      
Ozer     1                                                                      
Bloom    1                                                                      
Fox      9                                                                      
Smith    7                                                                      
Bates    7                                                                      
Kumar    6                                                                      
Abel     1                                                                      
Hutton   8                                                                      
Taylor   8                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Livingst 8                                                                      
Grant    7                                                                      
Johnson  6                                                                      
Taylor   3                                                                      
Fleaur   3                                                                      
Sullivan 2                                                                      
Geoni    2                                                                      
Sarchand 4                                                                      
Bull     4                                                                      
Dellinge 3                                                                      
Cabrio   3                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Chung    3                                                                      
Dilly    3                                                                      
Gates    2                                                                      
Perkins  2                                                                      
Bell     4                                                                      
Everett  3                                                                      
McCain   3                                                                      
Jones    2                                                                      
Walsh    3                                                                      
Feeney   3                                                                      
OConnell 2                                                                      

EMPLOYEES_AND_THEIR_SALARIES                                                    
-------------------------------------                                           
Grant    2                                                                      
Whalen   4                                                                      
Hartstei 1                                                                      
Fay      6                                                                      
Mavris   6                                                                      
Baer     1                                                                      
Higgins  1                                                                      
Gietz    8                                                                      

107 rows selected.

SQL> select rpad(last_name,8)||' '||rpad(salary/1000,length(salary/1000)+1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees;

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
King     24*                                                                    
Kochhar  17*                                                                    
De Haan  17*                                                                    
Hunold   9*                                                                     
Ernst    6*                                                                     
Austin   4.8*                                                                   
Pataball 4.8*                                                                   
Lorentz  4.2*                                                                   
Greenber 12.008*                                                                
Faviet   9*                                                                     
Chen     8.2*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Sciarra  7.7*                                                                   
Urman    7.8*                                                                   
Popp     6.9*                                                                   
Raphaely 11*                                                                    
Khoo     3.1*                                                                   
Baida    2.9*                                                                   
Tobias   2.8*                                                                   
Himuro   2.6*                                                                   
Colmenar 2.5*                                                                   
Weiss    8*                                                                     
Fripp    8.2*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Kaufling 7.9*                                                                   
Vollman  6.5*                                                                   
Mourgos  5.8*                                                                   
Nayer    3.2*                                                                   
Mikkilin 2.7*                                                                   
Landry   2.4*                                                                   
Markle   2.2*                                                                   
Bissot   3.3*                                                                   
Atkinson 2.8*                                                                   
Marlow   2.5*                                                                   
Olson    2.1*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Mallin   3.3*                                                                   
Rogers   2.9*                                                                   
Gee      2.4*                                                                   
Philtank 2.2*                                                                   
Ladwig   3.6*                                                                   
Stiles   3.2*                                                                   
Seo      2.7*                                                                   
Patel    2.5*                                                                   
Rajs     3.5*                                                                   
Davies   3.1*                                                                   
Matos    2.6*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Vargas   2.5*                                                                   
Russell  14*                                                                    
Partners 13.5*                                                                  
Errazuri 12*                                                                    
Cambraul 11*                                                                    
Zlotkey  10.5*                                                                  
Tucker   10*                                                                    
Bernstei 9.5*                                                                   
Hall     9*                                                                     
Olsen    8*                                                                     
Cambraul 7.5*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Tuvault  7*                                                                     
King     10*                                                                    
Sully    9.5*                                                                   
McEwen   9*                                                                     
Smith    8*                                                                     
Doran    7.5*                                                                   
Sewall   7*                                                                     
Vishney  10.5*                                                                  
Greene   9.5*                                                                   
Marvins  7.2*                                                                   
Lee      6.8*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Ande     6.4*                                                                   
Banda    6.2*                                                                   
Ozer     11.5*                                                                  
Bloom    10*                                                                    
Fox      9.6*                                                                   
Smith    7.4*                                                                   
Bates    7.3*                                                                   
Kumar    6.1*                                                                   
Abel     11*                                                                    
Hutton   8.8*                                                                   
Taylor   8.6*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Livingst 8.4*                                                                   
Grant    7*                                                                     
Johnson  6.2*                                                                   
Taylor   3.2*                                                                   
Fleaur   3.1*                                                                   
Sullivan 2.5*                                                                   
Geoni    2.8*                                                                   
Sarchand 4.2*                                                                   
Bull     4.1*                                                                   
Dellinge 3.4*                                                                   
Cabrio   3*                                                                     

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Chung    3.8*                                                                   
Dilly    3.6*                                                                   
Gates    2.9*                                                                   
Perkins  2.5*                                                                   
Bell     4*                                                                     
Everett  3.9*                                                                   
McCain   3.2*                                                                   
Jones    2.8*                                                                   
Walsh    3.1*                                                                   
Feeney   3*                                                                     
OConnell 2.6*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Grant    2.6*                                                                   
Whalen   4.4*                                                                   
Hartstei 13*                                                                    
Fay      6*                                                                     
Mavris   6.5*                                                                   
Baer     10*                                                                    
Higgins  12.008*                                                                
Gietz    8.3*                                                                   

107 rows selected.

SQL> select salary from employees where last_name='Grant';

    SALARY                                                                      
----------                                                                      
      2600                                                                      
      7000                                                                      

SQL> select rpad(last_name,8)||' '||rpad(salary/1000,length(salary/1000)+1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees order by rpad(salary/1000,length(salary/1000)+1,'*');

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Baer     10*                                                                    
Bloom    10*                                                                    
King     10*                                                                    
Tucker   10*                                                                    
Zlotkey  10.5*                                                                  
Vishney  10.5*                                                                  
Cambraul 11*                                                                    
Abel     11*                                                                    
Raphaely 11*                                                                    
Ozer     11.5*                                                                  
Errazuri 12*                                                                    

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Higgins  12.008*                                                                
Greenber 12.008*                                                                
Hartstei 13*                                                                    
Partners 13.5*                                                                  
Russell  14*                                                                    
De Haan  17*                                                                    
Kochhar  17*                                                                    
Olson    2.1*                                                                   
Philtank 2.2*                                                                   
Markle   2.2*                                                                   
Gee      2.4*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Landry   2.4*                                                                   
Marlow   2.5*                                                                   
Colmenar 2.5*                                                                   
Perkins  2.5*                                                                   
Vargas   2.5*                                                                   
Sullivan 2.5*                                                                   
Patel    2.5*                                                                   
Himuro   2.6*                                                                   
OConnell 2.6*                                                                   
Grant    2.6*                                                                   
Matos    2.6*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Seo      2.7*                                                                   
Mikkilin 2.7*                                                                   
Tobias   2.8*                                                                   
Jones    2.8*                                                                   
Geoni    2.8*                                                                   
Atkinson 2.8*                                                                   
Baida    2.9*                                                                   
Gates    2.9*                                                                   
Rogers   2.9*                                                                   
King     24*                                                                    
Feeney   3*                                                                     

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Cabrio   3*                                                                     
Davies   3.1*                                                                   
Walsh    3.1*                                                                   
Fleaur   3.1*                                                                   
Khoo     3.1*                                                                   
Stiles   3.2*                                                                   
Nayer    3.2*                                                                   
McCain   3.2*                                                                   
Taylor   3.2*                                                                   
Mallin   3.3*                                                                   
Bissot   3.3*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Dellinge 3.4*                                                                   
Rajs     3.5*                                                                   
Dilly    3.6*                                                                   
Ladwig   3.6*                                                                   
Chung    3.8*                                                                   
Everett  3.9*                                                                   
Bell     4*                                                                     
Bull     4.1*                                                                   
Lorentz  4.2*                                                                   
Sarchand 4.2*                                                                   
Whalen   4.4*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Pataball 4.8*                                                                   
Austin   4.8*                                                                   
Mourgos  5.8*                                                                   
Ernst    6*                                                                     
Fay      6*                                                                     
Kumar    6.1*                                                                   
Johnson  6.2*                                                                   
Banda    6.2*                                                                   
Ande     6.4*                                                                   
Vollman  6.5*                                                                   
Mavris   6.5*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Lee      6.8*                                                                   
Popp     6.9*                                                                   
Sewall   7*                                                                     
Tuvault  7*                                                                     
Grant    7*                                                                     
Marvins  7.2*                                                                   
Bates    7.3*                                                                   
Smith    7.4*                                                                   
Cambraul 7.5*                                                                   
Doran    7.5*                                                                   
Sciarra  7.7*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Urman    7.8*                                                                   
Kaufling 7.9*                                                                   
Weiss    8*                                                                     
Olsen    8*                                                                     
Smith    8*                                                                     
Chen     8.2*                                                                   
Fripp    8.2*                                                                   
Gietz    8.3*                                                                   
Livingst 8.4*                                                                   
Taylor   8.6*                                                                   
Hutton   8.8*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Faviet   9*                                                                     
McEwen   9*                                                                     
Hall     9*                                                                     
Hunold   9*                                                                     
Greene   9.5*                                                                   
Bernstei 9.5*                                                                   
Sully    9.5*                                                                   
Fox      9.6*                                                                   

107 rows selected.

SQL> select rpad(last_name,8)||' '||rpad(salary/1000,length(salary/1000)+1,'*') EMPLOYEES_AND_THEIR_SALARIES from employees order by salary;

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Olson    2.1*                                                                   
Markle   2.2*                                                                   
Philtank 2.2*                                                                   
Landry   2.4*                                                                   
Gee      2.4*                                                                   
Colmenar 2.5*                                                                   
Marlow   2.5*                                                                   
Patel    2.5*                                                                   
Vargas   2.5*                                                                   
Sullivan 2.5*                                                                   
Perkins  2.5*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Himuro   2.6*                                                                   
Matos    2.6*                                                                   
OConnell 2.6*                                                                   
Grant    2.6*                                                                   
Mikkilin 2.7*                                                                   
Seo      2.7*                                                                   
Tobias   2.8*                                                                   
Atkinson 2.8*                                                                   
Geoni    2.8*                                                                   
Jones    2.8*                                                                   
Baida    2.9*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Rogers   2.9*                                                                   
Gates    2.9*                                                                   
Cabrio   3*                                                                     
Feeney   3*                                                                     
Khoo     3.1*                                                                   
Davies   3.1*                                                                   
Fleaur   3.1*                                                                   
Walsh    3.1*                                                                   
Nayer    3.2*                                                                   
Stiles   3.2*                                                                   
Taylor   3.2*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
McCain   3.2*                                                                   
Bissot   3.3*                                                                   
Mallin   3.3*                                                                   
Dellinge 3.4*                                                                   
Rajs     3.5*                                                                   
Ladwig   3.6*                                                                   
Dilly    3.6*                                                                   
Chung    3.8*                                                                   
Everett  3.9*                                                                   
Bell     4*                                                                     
Bull     4.1*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Lorentz  4.2*                                                                   
Sarchand 4.2*                                                                   
Whalen   4.4*                                                                   
Austin   4.8*                                                                   
Pataball 4.8*                                                                   
Mourgos  5.8*                                                                   
Ernst    6*                                                                     
Fay      6*                                                                     
Kumar    6.1*                                                                   
Banda    6.2*                                                                   
Johnson  6.2*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Ande     6.4*                                                                   
Vollman  6.5*                                                                   
Mavris   6.5*                                                                   
Lee      6.8*                                                                   
Popp     6.9*                                                                   
Tuvault  7*                                                                     
Sewall   7*                                                                     
Grant    7*                                                                     
Marvins  7.2*                                                                   
Bates    7.3*                                                                   
Smith    7.4*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Cambraul 7.5*                                                                   
Doran    7.5*                                                                   
Sciarra  7.7*                                                                   
Urman    7.8*                                                                   
Kaufling 7.9*                                                                   
Weiss    8*                                                                     
Olsen    8*                                                                     
Smith    8*                                                                     
Chen     8.2*                                                                   
Fripp    8.2*                                                                   
Gietz    8.3*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Livingst 8.4*                                                                   
Taylor   8.6*                                                                   
Hutton   8.8*                                                                   
Hunold   9*                                                                     
Faviet   9*                                                                     
Hall     9*                                                                     
McEwen   9*                                                                     
Sully    9.5*                                                                   
Greene   9.5*                                                                   
Bernstei 9.5*                                                                   
Fox      9.6*                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Baer     10*                                                                    
Bloom    10*                                                                    
King     10*                                                                    
Tucker   10*                                                                    
Vishney  10.5*                                                                  
Zlotkey  10.5*                                                                  
Cambraul 11*                                                                    
Raphaely 11*                                                                    
Abel     11*                                                                    
Ozer     11.5*                                                                  
Errazuri 12*                                                                    

EMPLOYEES_AND_THEIR_SALARIES                                                    
--------------------------------------------------------------------------------
Higgins  12.008*                                                                
Greenber 12.008*                                                                
Hartstei 13*                                                                    
Partners 13.5*                                                                  
Russell  14*                                                                    
De Haan  17*                                                                    
Kochhar  17*                                                                    
King     24*                                                                    

107 rows selected.

SQL> select decode(lower(job_id), 'ad_pres','A'
  2  'st_man','B';
'st_man','B'
*
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> select decode(lower(job_id), 'ad_pres','A',
  2  'st_man','B',
  3  'it_prog','C',
  4  'sa_rep','D',
  5  'st_clerk','E') grade, job_id from employees;

G JOB_ID                                                                        
- ----------                                                                    
  AC_ACCOUNT                                                                    
  AC_MGR                                                                        
  AD_ASST                                                                       
A AD_PRES                                                                       
  AD_VP                                                                         
  AD_VP                                                                         
  FI_ACCOUNT                                                                    
  FI_ACCOUNT                                                                    
  FI_ACCOUNT                                                                    
  FI_ACCOUNT                                                                    
  FI_ACCOUNT                                                                    

G JOB_ID                                                                        
- ----------                                                                    
  FI_MGR                                                                        
  HR_REP                                                                        
C IT_PROG                                                                       
C IT_PROG                                                                       
C IT_PROG                                                                       
C IT_PROG                                                                       
C IT_PROG                                                                       
  MK_MAN                                                                        
  MK_REP                                                                        
  PR_REP                                                                        
  PU_CLERK                                                                      

G JOB_ID                                                                        
- ----------                                                                    
  PU_CLERK                                                                      
  PU_CLERK                                                                      
  PU_CLERK                                                                      
  PU_CLERK                                                                      
  PU_MAN                                                                        
  SA_MAN                                                                        
  SA_MAN                                                                        
  SA_MAN                                                                        
  SA_MAN                                                                        
  SA_MAN                                                                        
D SA_REP                                                                        

G JOB_ID                                                                        
- ----------                                                                    
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        

G JOB_ID                                                                        
- ----------                                                                    
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        

G JOB_ID                                                                        
- ----------                                                                    
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
D SA_REP                                                                        
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      

G JOB_ID                                                                        
- ----------                                                                    
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      

G JOB_ID                                                                        
- ----------                                                                    
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
  SH_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      

G JOB_ID                                                                        
- ----------                                                                    
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      

G JOB_ID                                                                        
- ----------                                                                    
E ST_CLERK                                                                      
E ST_CLERK                                                                      
E ST_CLERK                                                                      
B ST_MAN                                                                        
B ST_MAN                                                                        
B ST_MAN                                                                        
B ST_MAN                                                                        
B ST_MAN                                                                        

107 rows selected.

SQL> select job_id, case job_id
  2  when 'AD_PRES' then 'A'
  3  when 'ST_MAN' then 'B'
  4  when 'IT_PROG' then 'C'
  5  when 'SA_REP' then 'D'
  6  when 'ST_CLERK' then 'E'
  7  end grade
  8  from employees;

JOB_ID     G                                                                    
---------- -                                                                    
AC_ACCOUNT                                                                      
AC_MGR                                                                          
AD_ASST                                                                         
AD_PRES    A                                                                    
AD_VP                                                                           
AD_VP                                                                           
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      
FI_ACCOUNT                                                                      

JOB_ID     G                                                                    
---------- -                                                                    
FI_MGR                                                                          
HR_REP                                                                          
IT_PROG    C                                                                    
IT_PROG    C                                                                    
IT_PROG    C                                                                    
IT_PROG    C                                                                    
IT_PROG    C                                                                    
MK_MAN                                                                          
MK_REP                                                                          
PR_REP                                                                          
PU_CLERK                                                                        

JOB_ID     G                                                                    
---------- -                                                                    
PU_CLERK                                                                        
PU_CLERK                                                                        
PU_CLERK                                                                        
PU_CLERK                                                                        
PU_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_MAN                                                                          
SA_REP     D                                                                    

JOB_ID     G                                                                    
---------- -                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    

JOB_ID     G                                                                    
---------- -                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    

JOB_ID     G                                                                    
---------- -                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SA_REP     D                                                                    
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        

JOB_ID     G                                                                    
---------- -                                                                    
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        

JOB_ID     G                                                                    
---------- -                                                                    
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
SH_CLERK                                                                        
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    

JOB_ID     G                                                                    
---------- -                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    

JOB_ID     G                                                                    
---------- -                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_CLERK   E                                                                    
ST_MAN     B                                                                    
ST_MAN     B                                                                    
ST_MAN     B                                                                    
ST_MAN     B                                                                    
ST_MAN     B                                                                    

107 rows selected.

SQL> spool off

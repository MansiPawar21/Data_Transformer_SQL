DROP DATABASE IF EXISTS MARK;
CREATE DATABASE MARK;
USE MARK;

CREATE TABLE CUSTOMER(
    CUSTOMER_ID INT PRIMARY KEY AUTO_INCREMENT,
    CUSTOMER_FN VARCHAR(50),
    CUSTOMER_LN VARCHAR(50),
    CUSTOMER_EMAIL VARCHAR(50),
    R_DATE DATE 
);


INSERT INTO CUSTOMER (CUSTOMER_FN, CUSTOMER_LN, CUSTOMER_EMAIL, R_DATE) VALUES ('SIYA', 'KAPOOR', 'siyakapoor@gmail.com', '2025-04-03');
INSERT INTO CUSTOMER (CUSTOMER_FN, CUSTOMER_LN, CUSTOMER_EMAIL, R_DATE) VALUES ('ARYA', 'SHARMA', 'aryasharma@gmail.com', '2025-05-04');
INSERT INTO CUSTOMER (CUSTOMER_FN, CUSTOMER_LN, CUSTOMER_EMAIL, R_DATE) VALUES ('ROHAN', 'KAPOOR', 'rohankapoor@gmail.com', '2025-07-05');
INSERT INTO CUSTOMER (CUSTOMER_FN, CUSTOMER_LN, CUSTOMER_EMAIL, R_DATE) VALUES ('EMMA', 'WATSON', 'emmawatson@gmail.com', '2025-08-07');
INSERT INTO CUSTOMER (CUSTOMER_FN, CUSTOMER_LN, CUSTOMER_EMAIL, R_DATE) VALUES ('ALICE', 'STEVEN', 'alicesteven@gmail.com', '2025-09-08');


CREATE TABLE ORDERS(
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_AMT DECIMAL(10,2),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (CUSTOMER_ID)
);

INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMT) VALUES (101, 1, '2025-05-21', 150.00);
INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMT) VALUES (102, 2, '2025-07-17', 399.00);
INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMT) VALUES (103, 3, '2025-05-18', 180.00);
INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMT) VALUES (104, 4, '2026-05-21', 750.00);
INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMT) VALUES (105, 5, '2026-05-21', 800.00);


CREATE TABLE EMPLOYEES(
    EMP_ID INT PRIMARY KEY AUTO_INCREMENT,
    F_NAME VARCHAR(20),
    L_NAME VARCHAR(20),
    DEPARTMENT VARCHAR(20),
    HIRE_DATE DATE,
    SALARY FLOAT
);

INSERT INTO EMPLOYEES (F_NAME, L_NAME, DEPARTMENT, HIRE_DATE, SALARY) VALUES ('MARK', 'ZUKERBERG', 'SALES', '2023-07-12', 50000.00);
INSERT INTO EMPLOYEES (F_NAME, L_NAME, DEPARTMENT, HIRE_DATE, SALARY) VALUES ('ALICE', 'STEVEN', 'HR', '2023-08-21', 70000.00);
INSERT INTO EMPLOYEES (F_NAME, L_NAME, DEPARTMENT, HIRE_DATE, SALARY) VALUES ('MAX', 'SHARMA', 'MARKETING', '2023-08-25', 90000.00);
INSERT INTO EMPLOYEES (F_NAME, L_NAME, DEPARTMENT, HIRE_DATE, SALARY) VALUES ('RIVA', 'KAPOOR', 'HR', '2024-05-22', 70000.00);
INSERT INTO EMPLOYEES (F_NAME, L_NAME, DEPARTMENT, HIRE_DATE, SALARY) VALUES ('MIKE', 'PATEL', 'MARKETING', '2024-09-27', 80000.00);

-- ===============================================
---OUTPUTS---
-- ===============================================
mysql> SOURCE D:/SQL/SQLPROJECT_2.SQL;
Query OK, 3 rows affected (1.109 sec)

Query OK, 1 row affected (0.098 sec)

Query OK, 0 rows affected (0.008 sec)

Query OK, 0 rows affected (0.394 sec)

Query OK, 1 row affected (0.076 sec)

Query OK, 1 row affected (0.039 sec)

Query OK, 1 row affected (0.033 sec)

Query OK, 1 row affected (0.035 sec)

Query OK, 1 row affected (0.034 sec)

Query OK, 0 rows affected (0.260 sec)

Query OK, 1 row affected (0.057 sec)

Query OK, 1 row affected (0.036 sec)

Query OK, 1 row affected (0.043 sec)

Query OK, 1 row affected (0.036 sec)

Query OK, 1 row affected (0.039 sec)

Query OK, 0 rows affected (0.254 sec)

Query OK, 1 row affected (0.076 sec)

Query OK, 1 row affected (0.049 sec)

Query OK, 1 row affected (0.043 sec)

Query OK, 1 row affected (0.039 sec)

Query OK, 1 row affected (0.054 sec)

-- ===============================================
---CUSTOMER TABLE---
-- ===============================================
---RETRIEVE ALL CUSTOMER---
-- ===============================================
mysql> SELECT * FROM CUSTOMER;
+-------------+-------------+-------------+-----------------------+------------+
| CUSTOMER_ID | CUSTOMER_FN | CUSTOMER_LN | CUSTOMER_EMAIL        | R_DATE     |
+-------------+-------------+-------------+-----------------------+------------+
|           1 | SIYA        | KAPOOR      | siyakapoor@gmail.com  | 2025-04-03 |
|           2 | ARYA        | SHARMA      | aryasharma@gmail.com  | 2025-05-04 |
|           3 | ROHAN       | KAPOOR      | rohankapoor@gmail.com | 2025-07-05 |
|           4 | EMMA        | WATSON      | emmawatson@gmail.com  | 2025-08-07 |
|           5 | ALICE       | STEVEN      | alicesteven@gmail.com | 2025-09-08 |
+-------------+-------------+-------------+-----------------------+------------+
5 rows in set (0.688 sec)

-- ===============================================
-- ===============================================
---ORDERS TABLE---
-- ===============================================
-- ===============================================
mysql> SELECT * FROM ORDERS;
+----------+-------------+------------+-----------+
| ORDER_ID | CUSTOMER_ID | ORDER_DATE | TOTAL_AMT |
+----------+-------------+------------+-----------+
|      101 |           1 | 2025-05-21 |    150.00 |
|      102 |           2 | 2025-07-17 |    399.00 |
|      103 |           3 | 2025-05-18 |    180.00 |
|      104 |           4 | 2026-05-21 |    750.00 |
|      105 |           5 | 2026-05-21 |    800.00 |
+----------+-------------+------------+-----------+
5 rows in set (0.013 sec)

-- ===============================================
-- ===============================================
---EMPLOYEES TABLE---
-- ===============================================
-- ===============================================
mysql> SELECT * FROM EMPLOYEES;
+--------+--------+-----------+------------+------------+--------+
| EMP_ID | F_NAME | L_NAME    | DEPARTMENT | HIRE_DATE  | SALARY |
+--------+--------+-----------+------------+------------+--------+
|      1 | MARK   | ZUKERBERG | SALES      | 2023-07-12 |  50000 |
|      2 | ALICE  | STEVEN    | HR         | 2023-08-21 |  70000 |
|      3 | MAX    | SHARMA    | MARKETING  | 2023-08-25 |  90000 |
|      4 | RIVA   | KAPOOR    | HR         | 2024-05-22 |  70000 |
|      5 | MIKE   | PATEL     | MARKETING  | 2024-09-27 |  80000 |
+--------+--------+-----------+------------+------------+--------+
5 rows in set (0.011 sec)

-- =============================================================================
---1.) INNER JOIN : RETRIEVE ALL ORDERS AND CUSTOMER DETAILS WHERE ORDERS EXISTS
-- =============================================================================
mysql> SELECT
    ->     CUSTOMER.CUSTOMER_ID, 
    ->              CUSTOMER.CUSTOMER_FN, 
    ->              CUSTOMER.CUSTOMER_LN, 
    ->              CUSTOMER.CUSTOMER_EMAIL, 
    ->              CUSTOMER.R_DATE, 
    ->              ORDERS.ORDER_ID, 
    ->              ORDERS.ORDER_DATE, 
    ->              ORDERS.TOTAL_AMT 
    -> FROM CUSTOMER 
    -> INNER JOIN ORDERS 
    -> ON CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
| CUSTOMER_ID | CUSTOMER_FN | CUSTOMER_LN | CUSTOMER_EMAIL        | R_DATE     | ORDER_ID | ORDER_DATE | TOTAL_AMT |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
|           1 | SIYA        | KAPOOR      | siyakapoor@gmail.com  | 2025-04-03 |      101 | 2025-05-21 |    150.00 |
|           2 | ARYA        | SHARMA      | aryasharma@gmail.com  | 2025-05-04 |      102 | 2025-07-17 |    399.00 |
|           3 | ROHAN       | KAPOOR      | rohankapoor@gmail.com | 2025-07-05 |      103 | 2025-05-18 |    180.00 |
|           4 | EMMA        | WATSON      | emmawatson@gmail.com  | 2025-08-07 |      104 | 2026-05-21 |    750.00 |
|           5 | ALICE       | STEVEN      | alicesteven@gmail.com | 2025-09-08 |      105 | 2026-05-21 |    800.00 |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
5 rows in set (0.065 sec)

-- =============================================================================
---2.) LEFT JOIN : RETRIEVE ALL CUSTOMER AND THEIR CORRESPONDING ORDER (IF ANY)
-- =============================================================================
mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        CUSTOMER.CUSTOMER_FN,
    ->        CUSTOMER.CUSTOMER_LN,
    ->        CUSTOMER.CUSTOMER_EMAIL,
    ->        CUSTOMER.R_DATE,
    ->        ORDERS.ORDER_ID,
    ->        ORDERS.ORDER_DATE,
    ->        ORDERS.TOTAL_AMT
    -> FROM CUSTOMER
    -> LEFT JOIN ORDERS
    -> ON CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
| CUSTOMER_ID | CUSTOMER_FN | CUSTOMER_LN | CUSTOMER_EMAIL        | R_DATE     | ORDER_ID | ORDER_DATE | TOTAL_AMT |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
|           1 | SIYA        | KAPOOR      | siyakapoor@gmail.com  | 2025-04-03 |      101 | 2025-05-21 |    150.00 |
|           2 | ARYA        | SHARMA      | aryasharma@gmail.com  | 2025-05-04 |      102 | 2025-07-17 |    399.00 |
|           3 | ROHAN       | KAPOOR      | rohankapoor@gmail.com | 2025-07-05 |      103 | 2025-05-18 |    180.00 |
|           4 | EMMA        | WATSON      | emmawatson@gmail.com  | 2025-08-07 |      104 | 2026-05-21 |    750.00 |
|           5 | ALICE       | STEVEN      | alicesteven@gmail.com | 2025-09-08 |      105 | 2026-05-21 |    800.00 |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
5 rows in set (0.009 sec)

-- ===============================================================================
---3.) RIGHT JOIN : RETRIEVE ALL ORDERS AND THEIR CORRESPOMDING CUSTOMER (IF ANY)
-- ===============================================================================
mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        CUSTOMER.CUSTOMER_FN,
    ->        CUSTOMER.CUSTOMER_LN,
    ->        CUSTOMER.CUSTOMER_EMAIL,
    ->        CUSTOMER.R_DATE,
    ->        ORDERS.ORDER_ID,
    ->        ORDERS.ORDER_DATE,
    ->        ORDERS.TOTAL_AMT
    -> FROM CUSTOMER
    -> RIGHT JOIN ORDERS
    -> ON CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
| CUSTOMER_ID | CUSTOMER_FN | CUSTOMER_LN | CUSTOMER_EMAIL        | R_DATE     | ORDER_ID | ORDER_DATE | TOTAL_AMT |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
|           1 | SIYA        | KAPOOR      | siyakapoor@gmail.com  | 2025-04-03 |      101 | 2025-05-21 |    150.00 |
|           2 | ARYA        | SHARMA      | aryasharma@gmail.com  | 2025-05-04 |      102 | 2025-07-17 |    399.00 |
|           3 | ROHAN       | KAPOOR      | rohankapoor@gmail.com | 2025-07-05 |      103 | 2025-05-18 |    180.00 |
|           4 | EMMA        | WATSON      | emmawatson@gmail.com  | 2025-08-07 |      104 | 2026-05-21 |    750.00 |
|           5 | ALICE       | STEVEN      | alicesteven@gmail.com | 2025-09-08 |      105 | 2026-05-21 |    800.00 |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
5 rows in set (0.013 sec)

-- =============================================================================
---4.) FULL OUTER JOIN : RETRIEVE ALL CUSTOMER AND ALL ORDERS,REGARDLESS OF MATCHING
-- =============================================================================
mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        CUSTOMER.CUSTOMER_FN,
    ->        CUSTOMER.CUSTOMER_LN,
    ->        CUSTOMER.CUSTOMER_EMAIL,
    ->        CUSTOMER.R_DATE,
    ->        ORDERS.ORDER_ID,
    ->        ORDERS.ORDER_DATE,
    ->        ORDERS.TOTAL_AMT
    -> FROM CUSTOMER
    -> LEFT JOIN ORDERS
    -> ON CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID
    -> 
    -> UNION
    -> 
    -> SELECT CUSTOMER.CUSTOMER_ID,
    ->        CUSTOMER.CUSTOMER_FN,
    ->        CUSTOMER.CUSTOMER_LN,
    ->        CUSTOMER.CUSTOMER_EMAIL,
    ->        CUSTOMER.R_DATE,
    ->        ORDERS.ORDER_ID,
    ->        ORDERS.ORDER_DATE,
    ->        ORDERS.TOTAL_AMT
    -> FROM CUSTOMER
    -> RIGHT JOIN ORDERS
    -> ON CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
| CUSTOMER_ID | CUSTOMER_FN | CUSTOMER_LN | CUSTOMER_EMAIL        | R_DATE     | ORDER_ID | ORDER_DATE | TOTAL_AMT |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
|           1 | SIYA        | KAPOOR      | siyakapoor@gmail.com  | 2025-04-03 |      101 | 2025-05-21 |    150.00 |
|           2 | ARYA        | SHARMA      | aryasharma@gmail.com  | 2025-05-04 |      102 | 2025-07-17 |    399.00 |
|           3 | ROHAN       | KAPOOR      | rohankapoor@gmail.com | 2025-07-05 |      103 | 2025-05-18 |    180.00 |
|           4 | EMMA        | WATSON      | emmawatson@gmail.com  | 2025-08-07 |      104 | 2026-05-21 |    750.00 |
|           5 | ALICE       | STEVEN      | alicesteven@gmail.com | 2025-09-08 |      105 | 2026-05-21 |    800.00 |
+-------------+-------------+-------------+-----------------------+------------+----------+------------+-----------+
5 rows in set (0.133 sec)

-- ========================================================================================
---5.) SUBQUERY TO FIND CUSTOMER WHO HAVE PLACED ORDERS WORTH MORE THAN THE AVERAGE AMOUNT
-- ========================================================================================
mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        CUSTOMER.CUSTOMER_FN,
    ->        CUSTOMER.CUSTOMER_LN,
    ->        CUSTOMER.CUSTOMER_EMAIL
    -> FROM CUSTOMER
    -> WHERE CUSTOMER.CUSTOMER_ID IN
    -> (
    ->     SELECT ORDERS.CUSTOMER_ID
    ->     FROM ORDERS
    ->     WHERE ORDERS.TOTAL_AMT >
    ->     (
    ->         SELECT AVG(ORDERS.TOTAL_AMT)
    ->         FROM ORDERS
    ->     )
    -> );
+-------------+-------------+-------------+-----------------------+
| CUSTOMER_ID | CUSTOMER_FN | CUSTOMER_LN | CUSTOMER_EMAIL        |
+-------------+-------------+-------------+-----------------------+
|           4 | EMMA        | WATSON      | emmawatson@gmail.com  |
|           5 | ALICE       | STEVEN      | alicesteven@gmail.com |
+-------------+-------------+-------------+-----------------------+
2 rows in set (0.115 sec)

-- =======================================================================
---6.) SUBQUERY TO FIND EMPLOYEES WITH SALARIES ABOVE THE AVERAGE SALARY
-- =======================================================================
mysql> SELECT EMPLOYEES.EMP_ID,
    ->        EMPLOYEES.F_NAME,
    ->        EMPLOYEES.L_NAME,
    ->        EMPLOYEES.SALARY
    -> FROM EMPLOYEES
    -> WHERE EMPLOYEES.SALARY >
    -> (
    ->     SELECT AVG(EMPLOYEES.SALARY)
    ->     FROM EMPLOYEES
    -> );
+--------+--------+--------+--------+
| EMP_ID | F_NAME | L_NAME | SALARY |
+--------+--------+--------+--------+
|      3 | MAX    | SHARMA |  90000 |
|      5 | MIKE   | PATEL  |  80000 |
+--------+--------+--------+--------+
2 rows in set (0.010 sec)

-- ===================================================
---7.) EXTRACT THE YEAR AND MONTH FROM THE ORDERDATE
-- ===================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        YEAR(ORDERS.ORDER_DATE) AS ORDER_YEAR,
    ->        MONTH(ORDERS.ORDER_DATE) AS ORDER_MONTH
    -> FROM ORDERS;
+----------+------------+-------------+
| ORDER_ID | ORDER_YEAR | ORDER_MONTH |
+----------+------------+-------------+
|      101 |       2025 |           5 |
|      102 |       2025 |           7 |
|      103 |       2025 |           5 |
|      104 |       2026 |           5 |
|      105 |       2026 |           5 |
+----------+------------+-------------+
5 rows in set (0.086 sec)

-- ======================================================================================
---8.) CALCULATE THE DIFFERENCE IN DAYS BETWEEN TWO DATES (ORDER DATE AND CURRENT DATE)
-- ======================================================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        DATEDIFF(CURDATE(), ORDERS.ORDER_DATE) AS DAYS_DIFFERENCE
    -> FROM ORDERS;
+----------+-----------------+
| ORDER_ID | DAYS_DIFFERENCE |
+----------+-----------------+
|      101 |             325 |
|      102 |             268 |
|      103 |             328 |
|      104 |             -40 |
|      105 |             -40 |
+----------+-----------------+
5 rows in set (0.081 sec)

-- =====================================================================
---9.) FORMAT THE ORDERDATE TO A MORE READABLE FORMAT (EG:'DD-MM-YYYY') 
-- =====================================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        DATE_FORMAT(ORDERS.ORDER_DATE, '%d-%b-%Y') AS FORMATTED_DATE
    -> FROM ORDERS;
+----------+----------------+
| ORDER_ID | FORMATTED_DATE |
+----------+----------------+
|      101 | 21-May-2025    |
|      102 | 17-Jul-2025    |
|      103 | 18-May-2025    |
|      104 | 21-May-2026    |
|      105 | 21-May-2026    |
+----------+----------------+
5 rows in set (0.078 sec)

-- ===============================================================
---10.) CONCATENATE FIRSTNAME AND LASTNAME TO A FORM OF FULL NAME
-- ===============================================================
mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        CONCAT(CUSTOMER.CUSTOMER_FN, ' ', CUSTOMER.CUSTOMER_LN) AS FULL_NAME
    -> FROM CUSTOMER;
+-------------+--------------+
| CUSTOMER_ID | FULL_NAME    |
+-------------+--------------+
|           1 | SIYA KAPOOR  |
|           2 | ARYA SHARMA  |
|           3 | ROHAN KAPOOR |
|           4 | EMMA WATSON  |
|           5 | ALICE STEVEN |
+-------------+--------------+
5 rows in set (0.069 sec)

-- ====================================================================
---11.) REPLACE PART OF A STRING (EG: REPLACE 'ROHAN' WITH 'JONATHAN')
-- ====================================================================

mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        REPLACE(CUSTOMER.CUSTOMER_FN, 'ROHAN', 'JONATHAN') AS UPDATED_NAME
    -> FROM CUSTOMER;
+-------------+--------------+
| CUSTOMER_ID | UPDATED_NAME |
+-------------+--------------+
|           1 | SIYA         |
|           2 | ARYA         |
|           3 | JONATHAN     |
|           4 | EMMA         |
|           5 | ALICE        |
+-------------+--------------+
5 rows in set (0.044 sec)

-- ===========================================================
---12.) Convert first name uppercase and last name lowercase
-- ===========================================================
mysql> SELECT UPPER(CUSTOMER.CUSTOMER_FN) AS FIRST_NAME_UPPER,
    ->        LOWER(CUSTOMER.CUSTOMER_LN) AS LAST_NAME_LOWER
    -> FROM CUSTOMER;
+------------------+-----------------+
| FIRST_NAME_UPPER | LAST_NAME_LOWER |
+------------------+-----------------+
| SIYA             | kapoor          |
| ARYA             | sharma          |
| ROHAN            | kapoor          |
| EMMA             | watson          |
| ALICE            | steven          |
+------------------+-----------------+
5 rows in set (0.090 sec)

-- =========================================
---13.) Trim extra spaces from email field
-- =========================================
mysql> SELECT CUSTOMER.CUSTOMER_ID,
    ->        TRIM(CUSTOMER.CUSTOMER_EMAIL) AS CLEAN_EMAIL
    -> FROM CUSTOMER;
+-------------+-----------------------+
| CUSTOMER_ID | CLEAN_EMAIL           |
+-------------+-----------------------+
|           1 | siyakapoor@gmail.com  |
|           2 | aryasharma@gmail.com  |
|           3 | rohankapoor@gmail.com |
|           4 | emmawatson@gmail.com  |
|           5 | alicesteven@gmail.com |
+-------------+-----------------------+
5 rows in set (0.037 sec)

-- =================================================================
---14.) CALCULATE THE RUNNING TOTAL OF TOTAL AMOUNT FOR EACH ORDER
-- =================================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        ORDERS.TOTAL_AMT,
    ->        SUM(ORDERS.TOTAL_AMT) OVER (ORDER BY ORDERS.ORDER_DATE) AS RUNNING_TOTAL
    -> FROM ORDERS;
+----------+-----------+---------------+
| ORDER_ID | TOTAL_AMT | RUNNING_TOTAL |
+----------+-----------+---------------+
|      103 |    180.00 |        180.00 |
|      101 |    150.00 |        330.00 |
|      102 |    399.00 |        729.00 |
|      104 |    750.00 |       2279.00 |
|      105 |    800.00 |       2279.00 |
+----------+-----------+---------------+
5 rows in set (0.094 sec)

-- ===============================================================
---15.) Rank orders based on TOTAL_AMT USING THE RANK() FUNCTION
-- ===============================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        ORDERS.TOTAL_AMT,
    ->        RANK() OVER (ORDER BY ORDERS.TOTAL_AMT DESC) AS AMOUNT_RANK
    -> FROM ORDERS;
+----------+-----------+-------------+
| ORDER_ID | TOTAL_AMT | AMOUNT_RANK |
+----------+-----------+-------------+
|      105 |    800.00 |           1 |
|      104 |    750.00 |           2 |
|      102 |    399.00 |           3 |
|      103 |    180.00 |           4 |
|      101 |    150.00 |           5 |
+----------+-----------+-------------+
5 rows in set (0.459 sec)

-- ========================================================================================
---16.) ASSIGN A DISCOUNT BASED ON TOTALAMOUNT IN ORDERS (EG: >1000:10% OFF, >500:5% OFF)
-- ========================================================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        ORDERS.TOTAL_AMT,
    ->        CASE
    ->            WHEN ORDERS.TOTAL_AMT > 1000 THEN '10% OFF'
    ->            WHEN ORDERS.TOTAL_AMT > 500 THEN '5% OFF'
    ->            ELSE 'NO DISCOUNT'
    ->        END AS DISCOUNT
    -> FROM ORDERS;
+----------+-----------+-------------+
| ORDER_ID | TOTAL_AMT | DISCOUNT    |
+----------+-----------+-------------+
|      101 |    150.00 | NO DISCOUNT |
|      102 |    399.00 | NO DISCOUNT |
|      103 |    180.00 | NO DISCOUNT |
|      104 |    750.00 | 5% OFF      |
|      105 |    800.00 | 5% OFF      |
+----------+-----------+-------------+
5 rows in set (0.017 sec)

-- =============================================================
---17.) CATEGORIZE EMPLOYEES SALARIES AS HIGH, MEDIUM, OR LOW
-- =============================================================
mysql> SELECT ORDERS.ORDER_ID,
    ->        ORDERS.TOTAL_AMT,
    ->        CASE
    ->            WHEN ORDERS.TOTAL_AMT >= 700 THEN 'HIGH'
    ->            WHEN ORDERS.TOTAL_AMT >= 300 THEN 'MEDIUM'
    ->            ELSE 'LOW'
    ->        END AS CATEGORY
    -> FROM ORDERS;
+----------+-----------+----------+
| ORDER_ID | TOTAL_AMT | CATEGORY |
+----------+-----------+----------+
|      101 |    150.00 | LOW      |
|      102 |    399.00 | MEDIUM   |
|      103 |    180.00 | LOW      |
|      104 |    750.00 | HIGH     |
|      105 |    800.00 | HIGH     |
+----------+-----------+----------+
5 rows in set (0.010 sec)

-- ===================================================================
-- ===================================================================


mysql> Terminal close -- exit!

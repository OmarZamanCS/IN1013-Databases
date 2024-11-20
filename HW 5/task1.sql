1.
SELECT bill_date, bill_total
FROM restBill
WHERE cust_name ="Bob Crow";

2.
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '% Smith'
ORDER BY cust_name DESC;

3.
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '% C%'
ORDER BY cust_name;

4.
SELECT DISTINCT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no IN (SELECT DISTINCT headwaiter FROM)

5.

6.


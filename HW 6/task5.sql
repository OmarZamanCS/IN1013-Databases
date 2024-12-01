1.
SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS num_bills
FROM restStaff s
JOIN restBill b ON s.staff_no = b.waiter_no
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

2.
SELECT rt.room_name, COUNT(rt.table_no) AS num_tables
FROM restRest_table rt
WHERE rt.no_of_seats > 6
GROUP BY rt.room_name;

3.
SELECT rt.room_name, SUM(b.bill_total) AS total_bills
FROM restBill b
JOIN restRest_table rt ON b.table_no = rt.table_no
GROUP BY rt.room_name;

4.
SELECT hs.first_name, hs.surname, SUM(b.bill_total) AS total_bill_amount
FROM restStaff hs
JOIN restStaff s ON hs.staff_no = s.headwaiter
JOIN restBill b ON s.staff_no = b.waiter_no
GROUP BY hs.first_name, hs.surname
ORDER BY total_bill_amount DESC;

5.
SELECT b.cust_name
FROM restBill b
GROUP BY b.c

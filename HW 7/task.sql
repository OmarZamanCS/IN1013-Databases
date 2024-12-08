1.
CREATE VIEW samsBills AS
SELECT
    s.first_name,
    s.surname,
    b.bill_date,
    b.bill_total,
    b.cust_name
FROM
    restBill b
JOIN
    restStaff s
ON
    b.waiter_no = s.staff_no
WHERE
    s.first_name = 'Sam' AND s.surname = 'Pitt';

2.
SELECT *
FROM samsBills
WHERE bill_total > 400;

3.
CREATE VIEW roomTotals AS
SELECT
    r.room_name,
    SUM(b.bill_total) AS total_sum
FROM
    restBill b
JOIN
    restRest_table t
ON
    b.table_no = t.table_no
JOIN
    restRoom_management r
ON
    t.room_name = r.room_name
GROUP BY
    r.room_name;

4.
CREATE VIEW teamTotals AS
SELECT
    CONCAT(h.first_name, ' ', h.surname) AS headwaiter_name,
    SUM(b.bill_total) AS total_sum
FROM
    restBill b
JOIN
    restStaff w
ON
    b.waiter_no = w.staff_no
JOIN
    restStaff h
ON
    w.headwaiter = h.staff_no
GROUP BY
    h.first_name, h.surname;


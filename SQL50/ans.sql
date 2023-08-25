# q1    <1757.>
SELECT product_id
FROM Products
WHERE low_fats='Y' AND recyclable='Y';



# q2    <584.>
SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id is NULL ;



# q3    <595.>
SELECT name, population, area
FROM World
WHERE population >= 25000000 OR area >= 3000000;



# q4    <1148.>
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id asc;



# q5    <1683.>
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;



# q6    <1378.>
SELECT EmployeeUNI.unique_id, Employees.name
FROM EmployeeUNI RIGHT JOIN Employees ON EmployeeUNI.id=Employees.id;



# q7    <1068.>
SELECT product_name, year, price
FROM Sales LEFT JOIN Product ON Sales.product_id = Product.product_id;



# q8    <1581.>
列出有去店家但沒有購買的紀錄
SELECT customer_id, count(customer_id) as count_no_trans FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;
OOOOOOOOOOOOOORRRRRRRRRRRRR
SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
FROM Visits LEFT JOIN Transactions ON  Visits.visit_id = Transactions.visit_id
WHERE Transactions.visit_id IS NULL
GROUP BY customer_id;



# q9
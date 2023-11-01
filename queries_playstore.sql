--Query: 1
SELECT * FROM analytics WHERE id = 1880;

--Query: 2
SELECT id, app_name FROM analytics WHERE last_updated = '2018-8-01';

--Query: 3
SELECT category, COUNT(*) FROM analytics GROUP BY category;

--Query: 4
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

--Query: 5
SELECT app_name, reviews FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

--Query: 6
SELECT category, AVG(rating) as avg_rating 
FROM analytics 
GROUP BY category 
ORDER BY FLOAT(avg_rating) DESC;

--Query: 7
SELECT app_name, price, rating 
FROM analytics 
WHERE rating < 3 
ORDER BY price DESC
LIMIT 5;

--Query: 8
SELECT * 
FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating DESC;

--Query: 9
SELECT app_name
FROM analytics
WHERE rating < 3 AND reviews >= 10000;

--Query: 10
SELECT app_name, price, reviews
FROM analytics
WHERE price >= 0.10 AND price <= 1.00

--Query: 11
SELECT app_name, last_updated
FROM analytics
ORDER BY last_updated
LIMIT 1;

--Query: 12
SELECT app_name, price
FROM analytics
ORDER BY price DESC
LIMIT 1;

--Query: 13
SELECT SUM(reviews) as total_reviews
FROM analytics;

--Query: 14
SELECT category, COUNT(*) as app_count
FROM analytics
GROUP BY category
HAVING COUNT(*) > 300
ORDER BY app_count DESC;

--Query: 15
SELECT app_name, reviews, min_installs, (min_installs / reviews) as proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC
LIMIT 1;
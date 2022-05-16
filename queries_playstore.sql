-- Comments in SQL Start with dash-dash --
columns: current_version, android_version, app_name, category, rating, reviews, size, min_installs, price, content_rating, genres, last_updated
-- SELECT LIST OF ALL CATEGORIES ALPHABETICALLY
SELECT category FROM analytics GROUP BY category ORDER BY category;

-- SHOW THE 25 MOST EXPENSIVE APPS
SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 25;

-- Assignment exercises below:
SELECT app_name, id FROM analytics WHERE id = 1880;
SELECT id, app_name FROM analytics WHERE last_updated IN ('2018-08-01');
 SELECT category, COUNT(app_name) FROM analytics GROUP BY category ORDER BY category;
 SELECT app_name, reviews FROM analytics GROUP BY reviews, app_name ORDER BY reviews desc;
-- skipped #5
 SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) desc;
 SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;
 SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating desc;
 SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 1000;
 SELECT app_name, price, reviews FROM analytics WHERE price > 0.1 AND price < 1.00 ORDER BY reviews desc LIMIT 10;
 SELECT app_name, MAX(price) FROM analytics GROUP BY app_name ORDER BY MAX(price) desc LIMIT 1;
 SELECT SUM(reviews) FROM analytics;
 SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
 SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion desc LIMIT 1;

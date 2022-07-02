SELECT * FROM nintendo_project.dbo.['List-of-best-selling-videogames$']


SELECT Game, Developer, Publisher, Release_date, Sales
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
ORDER BY Publisher


--Best Selling Games
SELECT Game, Developer, Publisher, Release_date, Sales
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
ORDER BY Sales desc


SELECT Game, Developer, Publisher, Release_date, Sales
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
ORDER BY Genre


--Sum of Sales on Developers
SELECT Developer, SUM(Sales) as developer_sales
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
GROUP BY Developer
ORDER BY developer_sales desc


--Sum of Sales on Publishers
SELECT Publisher, SUM(Sales) AS publisher_sum
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
GROUP BY Publisher
Order by publisher_sum desc



--Most Profitable Platform
SELECT Platform, SUM(Sales) AS platform_sum
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
GROUP BY Platform
Order by platform_sum desc


--Most Profitable Genre
SELECT Genre, SUM(Sales) AS genre_sum
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
WHERE Genre is not null
GROUP BY Genre
Order by genre_sum desc



SELECT Platform, Release_date
FROM nintendo_project.dbo.['List-of-best-selling-videogames$']
Order by Release_date
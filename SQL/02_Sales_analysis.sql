--  Sum of total sales in millions
SELECT CONCAT(CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)),' M') AS Total_Sales_IN_Millions
 FROM `blinkit grocery data`;
 
 -- Avg of total sales 
 SELECT CONCAT(CAST(AVG(`Sales`) AS DECIMAL(10,0)),' M') AS AVG_SALES
  FROM `blinkit grocery data`;
  
-- For Finding total number of different items sold as every row contains different item ,
-- No. Of rows= No. Of items
  SELECT COUNT(*) AS No_of_items FROM `blinkit grocery data`;
  
  -- Sum of total sales in millions where `Item Fat Content` = 'Low Fat’;
SELECT CONCAT(CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)),' M') AS Total_Sales_IN_Millions
FROM `blinkit grocery data`
WHERE `Item Fat Content` = 'Low Fat';

-- Finding average rating
SELECT CAST(AVG(Rating) AS DECIMAL(10,2))AS AVG_RATING FROM `blinkit grocery data`;

-- Total Sales By Fat Content
SELECT `Item Fat Content`, 
CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)) AS Total_Sales
FROM `blinkit grocery data`
GROUP BY `Item Fat Content`
ORDER BY Total_Sales ;

SELECT `Item Fat Content`, 
			CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)) AS Total_Sales,
			CAST(AVG(`Sales`) AS DECIMAL(10,0)) AS AVG_SALES,
			COUNT(*) AS No_of_items,
            CAST(AVG(Rating) AS DECIMAL(10,2))AS AVG_RATING
FROM `blinkit grocery data`
GROUP BY `Item Fat Content`
ORDER BY Total_Sales DESC;
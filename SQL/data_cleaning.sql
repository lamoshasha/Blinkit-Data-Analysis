CREATE DATABASE blinkitdb;
SELECT * FROM `blinkit grocery data`;

--  Count No. of rows
SELECT COUNT(*) FROM `blinkit grocery data`;
USE blinkitdb;

--  FOR Updating and removing safe mode
UPDATE `blinkit grocery data`
SET `Item Fat Content` =
CASE
WHEN `Item Fat Content` IN ('LF','low fat')THEN 'Low Fat'
WHEN `Item Fat Content` = 'reg' THEN 'Regular'
ELSE `Item Fat Content`
END;
SET SQL_SAFE_UPDATES = 0;

-- After updating check whether the data has been cleaned or not 

SELECT DISTINCT(`Item Fat Content`) FROM `blinkit grocery data`;
SELECT CONCAT(CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)),' M') AS Total_Sales_IN_Millions
 FROM `blinkit grocery data`;
 SELECT CAST(AVG(`Sales`) AS DECIMAL(10,0)) AS AVG_SALES
  FROM `blinkit grocery data`;
  SELECT COUNT(*) AS No_of_items FROM `blinkit grocery data`;
SELECT CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)) AS Total_Sales_IN_Millions
FROM `blinkit grocery data`
WHERE `Item Fat Content` = 'Low Fat';
SELECT CAST(AVG(Rating) AS DECIMAL(10,2))AS AVG_RATING FROM `blinkit grocery data`;

SELECT `Item Fat Content`, 
			CAST(SUM(`Sales`)/1000000 AS DECIMAL(10,2)) AS Total_Sales,
			CAST(AVG(`Sales`) AS DECIMAL(10,0)) AS AVG_SALES,
			COUNT(*) AS No_of_items,
            CAST(AVG(Rating) AS DECIMAL(10,2))AS AVG_RATING
FROM `blinkit grocery data`
GROUP BY `Item Fat Content`
ORDER BY Total_Sales DESC;

  
  
  
 
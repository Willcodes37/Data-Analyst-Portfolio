USE forbes_highest_paid_athletes;


-- TOTAL ATHLETES PER NATIONALITY

SELECT Nationality, COUNT(Nationality) AS Total
FROM earnings
GROUP BY Nationality
Order by Total DESC;


-- USA ATHLETES

SELECT *
FROM earnings
WHERE Nationality = 'USA'
ORDER BY `earnings ($ million)` DESC;



-- AVERAGE ATHLETE INCOME PER NATIONALITY

SELECT Nationality, AVG(`earnings ($ million)`) AS average_earings
FROM earnings
GROUP BY Nationality
Order by `earnings ($ million)` DESC;



-- HIGHEST GROSSING SPORTS 

SELECT Sport, SUM(`earnings ($ million)`) AS total_earnings_millions
FROM earnings
GROUP BY Sport
Order by total_earnings_millions DESC;



-- HIGHEST GROSSING ATHLETES

SELECT Name, Nationality, SUM(`earnings ($ million)`) AS total_earnings_millions
FROM earnings
GROUP BY Name
Order by total_earnings_millions DESC;





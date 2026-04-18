-- Calculate Net Investment
SELECT
	Ticker,
	Operation_Type,
	Quantity,
	Unit_Price,
	Commission,
	(Quantity * Unit_Price) + Commission AS Net_Investment
FROM Transactions
WHERE Operation_Type = 'BUY'
ORDER BY Net_Investment DESC;

-- Average Purchase Price per Ticket
SELECT
	Ticker,
	SUM(Quantity) AS Total_Shares,
	SUM(Quantity * Unit_Price + Commission ) AS Total_Investment,
	(SUM(Quantity * Unit_Price + Commission) / SUM(Quantity) ) AS Average_Cost_Per_Share
	FROM Transactions
	WHERE Operation_Type = 'BUY'
	GROUP BY Ticker;

-- Calculate the value weight of every stock using a subquery that calculates the total invested money
SELECT
	Ticker,
	SUM(Quantity*Unit_Price) as Ticker_Value,
	(SUM(Quantity*Unit_Price) / (SELECT SUM(Quantity*Unit_Price) FROM Transactions )  ) * 100 AS Portfolio_Weight
	FROM Transactions
	GROUP BY Ticker;

-- We filter the shares based on which ones are greater than the average cost per share
SELECT
	Ticker,
	Unit_Price
	FROM Transactions
	WHERE Operation_Type = 'BUY' AND Unit_Price >= (
		SELECT (SUM(Quantity * Unit_Price + Commission) / SUM(Quantity))
		FROM Transactions
		)
	ORDER BY Unit_Price DESC;

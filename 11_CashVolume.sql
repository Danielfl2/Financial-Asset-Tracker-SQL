-- This calculates the total money moved in a day and order by it
SELECT
	Ticker,
	_Date,
	Close_Price,
	Volume,
	(Close_Price* Volume) AS Cash_Volume_USD
FROM Historical
ORDER BY Cash_Volume_USD DESC;
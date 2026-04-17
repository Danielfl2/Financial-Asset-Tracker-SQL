-- The first operation we do over the data is calculate the daily return
-- between two KNOWN dates

SELECT
	Ticker,
	'2026-04-16' as Analysis_Date,
	( (107.79 - 107.71)/107.71 ) * 100 AS Daily_Return_Percentage
FROM Historical
WHERE Ticker = 'NFLX'
LIMIT 1;

-- Next we find the days where the Cash Volume is superior to a certain
-- threshold, this operation is useful due high liquidity often happening
-- when large prices moves

SELECT
	_Date,
	Ticker,
	(Close_Price * Volume) AS Cash_Volume
FROM Historical
WHERE (Close_Price * Volume) > 10000000000
ORDER BY Cash_Volume DESC;
	
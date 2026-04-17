-- We standardize the tickers registered in Historical and Dividends
UPDATE Historical
SET Ticker = UPPER(Ticker);

UPDATE Dividends
SET Ticker = UPPER(Ticker);

-- The registers with a negative or null close price are deleted
DELETE FROM Historical
WHERE Close_Price <= 0;



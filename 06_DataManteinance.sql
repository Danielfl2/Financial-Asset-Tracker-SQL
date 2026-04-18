-- We standardize the tickers registered in Historical, Dividends and 
UPDATE Historical
SET Ticker = UPPER(Ticker);

UPDATE Dividends
SET Ticker = UPPER(Ticker);

UPDATE Transactions
SET Ticker = UPPER(Ticker);

-- The registers with a negative or null close price are deleted
DELETE FROM Historical
WHERE Close_Price <= 0;



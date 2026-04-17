CREATE TABLE IF NOT EXISTS Historical (
Ticker VARCHAR(10),
_Date DATE,
Close_Price Decimal(15,2),
Volume BIGINT
);

CREATE TABLE IF NOT EXISTS Dividends (
Ticker VARCHAR(10),
ex_date DATE,
amount DECIMAL(10,4)
);
CREATE TABLE IF NOT EXISTS Transactions (
	Transaction_ID SERIAL PRIMARY KEY,
	Ticker 	VARCHAR(10),
	Transaction_Date DATE,
	Operation_Type VARCHAR(4), -- Buy or sell
	Quantity DECIMAL(15,4),
	Unit_Price DECIMAL(15,2),
	Commission DECIMAL(10,2)
);


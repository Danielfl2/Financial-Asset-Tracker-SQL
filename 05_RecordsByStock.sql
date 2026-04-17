-- Here you can change the ticker to filter a single stock

SELECT Ticker, _Date, Close_Price
FROM Historical
WHERE Ticker = 'NFLX';


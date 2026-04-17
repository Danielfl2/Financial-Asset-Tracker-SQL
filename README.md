Simple SQL project for learning made with POSTGRESQL. In 01 you create the 
historical table where the close price info of a ticker in a certain date
can be storaged and the Dividends table where the close date and amount of
a dividend of a certain stock is saved. 02 is the script where information to 
Historical table can be inputed. 03 functions as 02 but for the dividends
table. 04 filter the records of the historical table by date. 05 filter 
the historical table by stock. 06 gets all the records that fall within a 
range of the close price. 07 calculates the cash volume (amount of money 
moved in a day by a stock) and order by it.

Each table use VARCHAR(10) for the ticker name of the stock, both use DATE
for the specified date. Close_Price for Historical uses Decimal(15,2) and
amount for Dividends uses DECIMAL(10,4). Volume in Historical uses BIGINT. 

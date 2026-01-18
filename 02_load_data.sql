USE car_market_sql;

-- Load Kaggle CSV data
LOAD DATA LOCAL INFILE 'C:/Users/Victory/Downloads/car_prices.csv'
INTO TABLE raw_car_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



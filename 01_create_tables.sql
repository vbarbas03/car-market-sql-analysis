CREATE DATABASE IF NOT EXISTS car_market_sql;
USE car_market_sql;


CREATE TABLE raw_car_prices (
    year VARCHAR(10),
    make VARCHAR(50),
    model VARCHAR(100),
    trim VARCHAR(100),
    body VARCHAR(50),
    transmission VARCHAR(50),
    vin VARCHAR(50),
    state VARCHAR(20),
    condition_rating VARCHAR(20),
    odometer VARCHAR(20),
    color VARCHAR(50),
    interior VARCHAR(50),
    seller VARCHAR(100),
    mmr VARCHAR(20),
    sellingprice VARCHAR(20),
    saledate VARCHAR(100)
);


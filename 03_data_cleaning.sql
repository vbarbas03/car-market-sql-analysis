USE car_market_sql;

DROP TABLE IF EXISTS car_prices_clean;

CREATE TABLE car_prices_clean AS
SELECT
    CAST(NULLIF(year, '') AS UNSIGNED) AS year,
    make,
    model,
    body,
    transmission,
    state,
    CAST(NULLIF(odometer, '') AS UNSIGNED) AS odometer,
    CAST(NULLIF(mmr, '') AS UNSIGNED) AS market_price,
    CAST(NULLIF(sellingprice, '') AS UNSIGNED) AS selling_price,
    STR_TO_DATE(
        SUBSTRING_INDEX(saledate, ' GMT', 1),
        '%a %b %d %Y %H:%i:%s'
    ) AS sale_date
FROM raw_car_prices
WHERE sellingprice IS NOT NULL
  AND sellingprice != ''
  AND saledate LIKE '%GMT%';


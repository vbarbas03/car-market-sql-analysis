SELECT
    make,
    ROUND(AVG(selling_price), 2) AS avg_selling_price,
    COUNT(*) AS total_sales
FROM car_prices_clean
GROUP BY make
ORDER BY avg_selling_price DESC;

SELECT
    CASE
        WHEN odometer < 30000 THEN 'Low mileage'
        WHEN odometer < 80000 THEN 'Medium mileage'
        ELSE 'High mileage'
    END AS mileage_group,
    ROUND(AVG(selling_price), 2) AS avg_price
FROM car_prices_clean
WHERE odometer IS NOT NULL
GROUP BY mileage_group;

SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sale_month,
    ROUND(AVG(selling_price), 2) AS avg_price
FROM car_prices_clean
GROUP BY sale_month
ORDER BY sale_month;

SELECT
    make,
    COUNT(*) AS total_sales
FROM car_prices_clean
GROUP BY make
ORDER BY total_sales DESC
LIMIT 10;

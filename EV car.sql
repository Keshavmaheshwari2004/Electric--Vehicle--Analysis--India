SELECT * FROM ev_car.`electric vehicle sales by states in india`;

 -- Total EV sales (all time)
SELECT SUM(ev_sales_quantity) AS total_ev_sales
FROM ev_car.`electric vehicle sales by states in india`;


-- Top 10 states in latest year
SELECT state, SUM(ev_sales_quantity) AS total_ev_sales
FROM ev_car.`electric vehicle sales by states in india`
WHERE year = (SELECT MAX(year) FROM ev_car.`electric vehicle sales by states in india`)
GROUP BY state
ORDER BY total_ev_sales DESC
LIMIT 10;

-- National monthly sales trend (YYYY-MM)

SELECT DATE_FORMAT(date, '%Y-%m-%d') AS ymd,
       SUM(ev_sales_quantity) AS total_ev_sales
FROM ev_car.`electric vehicle sales by states in india`
GROUP BY ymd
ORDER BY ymd;

-- Share by vehicle_class (overall)

SELECT vehicle_class,
       SUM(ev_sales_quantity) AS total_ev_sales,
       ROUND(100 * SUM(ev_sales_quantity) /
             SUM(SUM(ev_sales_quantity)) OVER (), 2) AS pct_share
FROM ev_car.`electric vehicle sales by states in india`
GROUP BY vehicle_class
ORDER BY total_ev_sales DESC;


select *from ev_car.`electric vehicle sales by states in india`;
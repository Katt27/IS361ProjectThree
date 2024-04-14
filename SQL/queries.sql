-- SQL query to join tb and population tables and calculate rates
SELECT 
    tb.country,
    tb.year,
    SUM(COALESCE(tb.cases, 0)) / population.population AS rate
FROM
    tb
JOIN 
    population ON tb.country = population.country AND tb.year = population.year
GROUP BY
    tb.country, tb.year;

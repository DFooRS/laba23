SELECT timezone, count(city)
FROM city 
WHERE federal_district == 'Приволжский' OR
federal_district == 'Сибирский'
GROUP BY timezone
ORDER BY timezone ASC;
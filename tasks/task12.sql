WITH dist AS(
SELECT DISTINCT address,
(((SELECT geo_lat FROM city WHERE city = 'Самара') - geo_lat) * ((SELECT geo_lat FROM city WHERE city = 'Самара') - geo_lat) + 
((SELECT geo_lon FROM city WHERE city = 'Самара') - geo_lon) * ((SELECT geo_lon FROM city WHERE city = 'Самара') - geo_lon))
as distance FROM city
WHERE city != 'Самара')
SELECT address, distance FROM dist
ORDER BY distance ASC
LIMIT 3;
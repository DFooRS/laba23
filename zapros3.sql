SELECT restaurant, count(item)
FROM fastfood
GROUP BY restaurant
ORDER BY count(item) DESC;
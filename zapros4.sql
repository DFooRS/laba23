WITH perc AS(
SELECT item, ((cal_fat * 1.0) / (calories * 1.0) * 100.0)
as percent FROM fastfood)
SELECT item, percent FROM perc
ORDER BY percent DESC;
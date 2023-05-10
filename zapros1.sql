SELECT restaurant, item, (vit_a + vit_c)
FROM fastfood
ORDER BY (vit_a + vit_c) DESC
;
SELECT CONCAT(pt1.topping_name,',',pt2.topping_name,',', pt3.topping_name) AS pizza,
pt1.ingredient_cost + pt2.ingredient_cost + pt3.ingredient_cost AS total_cost
FROM pizza_toppings pt1 
/*Important tip: Instead of matching the tables on columns using the equal sign =, 
we use the less than sign < to ensure that:
  There is no duplication of the ingredients across each row.
  The ingredients are arranged in an alphabetical manner from left to right.
*/
CROSS JOIN pizza_toppings pt2, pizza_toppings pt3
WHERE pt1.topping_name < pt2.topping_name
AND pt2.topping_name < pt3.topping_name
ORDER BY 2 DESC, 1 ASC
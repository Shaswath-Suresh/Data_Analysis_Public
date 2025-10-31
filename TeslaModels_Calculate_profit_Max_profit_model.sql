SELECT *, (car_price - production_cost) * cars_sold AS profit
FROM tesla_models
ORDER BY profit DESC
LIMIT 1
# access datasets as pandas dataframes
import pandas as pd;
tesla_models = pd.DataFrame

tesla_models.head()
tesla_models['profit'] = tesla_models.cars_sold * (tesla_models.car_price - tesla_models.production_cost)

tesla_models = tesla_models.sort_values('profit', ascending = False)

tesla_models.head(1)
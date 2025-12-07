# access datasets as pandas dataframes
import pandas as pd;
temperatures = pd.DataFrame()

#use .shift(1) to create a previous tempertaure column
temperatures['previous_temp'] = temperatures['temperature'].shift(1)

#get full subset that meets temp being greater than previous day's temp
higher_temps = temperatures[temperatures['temperature'] > temperatures['previous_temp']]

#final output only calls for date
higher_temps[['date']].sort_values('date')
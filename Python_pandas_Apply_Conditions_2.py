# access datasets as pandas dataframes
import pandas as pd;
patients = pd.DataFrame

patients.head()

high_risk = patients[(patients['age'] > 50) &
(patients['cholesterol'] >= 240) &
(patients['weight'] >= 200)].sort_values('cholesterol', ascending= False)

high_risk
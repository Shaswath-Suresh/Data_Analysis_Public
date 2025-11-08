# access datasets as pandas dataframes
import pandas as pd;

tech_layoffs = pd.DataFrame
tech_layoffs.head()

tech_layoffs['Percentage_Laid_Off'] = round(100 * tech_layoffs['employees_fired'] / tech_layoffs['company_size'],2)

tech_layoffs[["company", "Percentage_Laid_Off"]].sort_values(by= "company")
import pandas as pd

def employee_bonus(employee: pd.DataFrame, bonus: pd.DataFrame) -> pd.DataFrame:
    res = pd.merge(left = employee, right = bonus, on = 'empId', how = 'left')

    res = res[(res['bonus'] < 1000) | (res['bonus'].isna())] #single-char logical operators in python (not the words or double-char logical operators)

    return res[['name', 'bonus']]
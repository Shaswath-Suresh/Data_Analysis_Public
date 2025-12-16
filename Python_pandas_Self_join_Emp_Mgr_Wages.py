import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    res = pd.merge(left = employee, right = employee, how = 'inner', left_on = 'managerId', right_on = 'id')
    # When self-joining a table in pandas, column suffixes are denoted _x,_y,etc.

    #Filter employees who earn more than their managers
    emp = res[res['salary_x'] > res['salary_y']]['name_x']
    return pd.DataFrame({'Employee': emp}) #aliases the name_x column to Employee
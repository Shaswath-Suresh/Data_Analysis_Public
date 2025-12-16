import pandas as pd

def delete_duplicate_emails(person: pd.DataFrame) -> None:
    # Remove duplicate emails, keeping the row with the smallest id
    # because we are using inplace = True, we cannot stack drop-duplicates and sort_values in one line
    #chained methods create a new DataFrame, which we are not trying to do
    person.sort_values('id', inplace = True)
    person.drop_duplicates(subset='email', keep='first', inplace = True)
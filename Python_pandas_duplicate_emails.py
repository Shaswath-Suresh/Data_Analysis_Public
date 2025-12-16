import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    # Create a DataFrame to store results
    res = pd.DataFrame()

    # Filter rows with duplicated emails
    res = person.loc[person.duplicated(subset=['email']), ['email']] #.loc(...,['email]) slices only the email column for those duplicated rows

    # Remove duplicate entries from the result
    return res.drop_duplicates()
import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    #Group activity data by 'player-id' and find the first event_date for each player
    res = activity.groupby('player_id')['event_date'].agg('min').reset_index()
    
    #Rename columns
    res = res.rename(columns = {'event_date': 'first_login'})

    return res
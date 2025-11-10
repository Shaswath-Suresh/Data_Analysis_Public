import pandas as pd;

user_time = pd.DataFrame()
users = pd.DataFrame()

user_time.head()
avg_time = user_time['media_time_minutes'].mean()

final_table = users.merge(user_time, on = "user_id").reset_index()
final_table = final_table[final_table["media_time_minutes"] > avg_time].sort_values("first_name")
final_table[['first_name']]
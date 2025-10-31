# access datasets as pandas dataframes
import pandas as pd;

candidates = pd.DataFrame()

candidates.head()
# X marks yes. Use & and | operators to apply column conditions to df
candidates[
  (candidates['sql_experience'] == 'X') &
  ((candidates['python'] == 'X') | (candidates['r_programming'] == 'X')) &
  (candidates['problem_solving'] == 'X') &
  (candidates['domain_knowledge'] == 'X')
  #only output candidate ids and sort by candidate_id column
][['candidate_id']].sort_values(by='candidate_id')
# access datasets as pandas dataframes
import pandas as pd;
import numpy as np;

marketing_spend = pd.DataFrame()
marketing_spend.head()

'''without numpy
marketing_spend['roi'] = round((marketing_spend['revenue_generated']-marketing_spend['investment'])*100/marketing_spend['investment'],0)
marketing_spend = marketing_spend.sort_values(['roi','campaign_id'], ascending = [False,False])[['campaign_id','campaign_name','roi']]
marketing_spend['roi_rank'] = marketing_spend['roi'].rank(ascending = False, pct = True)
marketing_spend[marketing_spend['roi_rank']<=0.25].sort_values(['roi','campaign_id'], ascending = [False,False])[['campaign_id','campaign_name','roi']]
'''

#getting percentile with numpy
marketing_spend['ROI'] = round((marketing_spend['revenue_generated'] - marketing_spend['investment'])*100/marketing_spend['investment'],0)

roi_75th_pct = np.percentile(marketing_spend['ROI'],75)
# Filter the top 25% campaigns based on ROI AND Sort the filtered DataFrame by ROI (descending) and campaign_id (descending)
final_df = marketing_spend[marketing_spend['ROI'] >= roi_75th_pct].sort_values(by=['ROI', 'campaign_id'], ascending=[False, False])

# Select the desired columns for the output
output_df = final_df[['campaign_id', 'campaign_name', 'ROI']]
# Reset the index and drop the old index column
output_df = output_df.reset_index(drop=True)
output_df

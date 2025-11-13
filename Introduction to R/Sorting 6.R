ind=order(murders$population)
my_df_ordered=data.frame(state=murders$state[ind],rank=1:length(ind))
# Environment memory cleanup
# When doing research your local environment will fill with data and values as you work, which means available memory (ie RAM) will also fill.
# When working it is a good practice to periodically clearing the environment memory the same way you might clear the browser history to clear up space to improve performance periodically as well.

rm(list=(ls)) # This releases ALL of the objects and tables in the environment space --- this is permanent and cannot be undone. You can specify only certain objects to release, eg: rm(data1, data2, table1, list6)
gc() # This flushes unused objects (ie. released from the above rm command) from the memory to clear space for use

# You can achieve a similar cleanup within a data set as well by setting a variable to NULL, eg:
data$var1 <- NULL

# This pair of commands has the same effect as closing and not saving your workspace when you close your R development environment, it just means you can get a fresh clean workspace with cleared memory without having to restart your environment.
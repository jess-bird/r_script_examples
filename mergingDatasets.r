# Merging datasets
# NB --- to merge data sets this way, the linking variable name must be common to both and is case sensitive
# ie. Email is not equivalent to email
# This performs a similar function to a SQL based join, but this version is used typically as part of longer R scripts
# when joining data enginering functions sequentially, say if you need to do data cleaning like dealing with NULLS and dealing with erroneous data values --- or simply if you had 2 data sets ready to join for statistical modelling purposes, this version is shorter than having to call SQLDF, it just depends on what you're trying to do at the time as to which option you might chose over another.

mergedData <- merge(data1, data2, by = 'var1')
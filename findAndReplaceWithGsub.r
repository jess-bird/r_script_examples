# Find and replace with gsub
# Here gsub is used to overwrite var1, but can be pointed to a new column or data set entirely.
# ie: gsub("<what to search for>", "<what you want to replace the search string with>", <this is the datafile, like a text file, or variable to search and replace in>)
# Replacing a search string with "" with no space between the double quotes effectively removes the search string from your data and cannot be undone
data$var1 <- gsub("0:FFFF", "", data$var1)
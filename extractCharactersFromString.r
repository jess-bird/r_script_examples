# Extract characters from string
# This extracts characters (1st to 10th inclusive --- as R starts indexing at 1, as opposed to other languages like Python which start indexing from zero) from var1 in the data1 data set and creates a new variable named var2 to put the extracted characters.
# NB: You can extract the characters and overwrite to the same variable by outputting to the same named variable (ie. var1) but this action cannot be undone --- so be sure to back up your data if you need it again later.

data1$var2 <- str_sub(
    data1$var1,
    1,
    10
)
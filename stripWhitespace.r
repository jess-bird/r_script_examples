# Strip whitespace
# This strips the whitespace from a string in df$varOld and puts the output into a new column df$varNew

df$varNew <- str_squish(
    df$varOld
)
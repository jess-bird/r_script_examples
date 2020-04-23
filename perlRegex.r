# Perl regex
#
# This finds the pattern (<somethingBetweenParentheses>) in the varOld column in the df data set
# It then replaces it with the chose characters, here "" is effectively NULL so the output is to remove the regexed string
# It then adds this output, row by row, to the new column varNew --- here effectively appending (cbinding) to the existing data set but can be piped out to a different data set or to create a new one entirely
#
# eg: if df$varOld = someText (<somethingBetweenParentheses>) then the df$varNew = someText with the contents of the brackets regexed out or replaced with something else.
df$varNew <- sub(
    "[(]+.+[)]",
    "",
    df$varOld,
    perl = TRUE
)
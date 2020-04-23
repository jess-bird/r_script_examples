# Useful SQLDF functions

# Left outer join 2 data sets with different names for the linking key
# Note that this SQL call is sensitive to the differences between ``, '', "", ==
# `required if a var has spaces or unusual characters`
# 'to denote string values'
#  "typically integer values"
#  == (to denote exactly some value)
# A search wildcard can be used in the form of % such as the var3 in the WHERE clause example here
# var4 shows an example of a WHERE ___ NOT LIKE ... application

newData <- sqldf("
    SELECT
    *
    FROM Data1
    LEFT OUTER JOIN Data2 on Email=Data2.emails
    WHERE var1 == 'something'
    AND var2 == 'another thing'
    AND var3 LIKE '%name%'
    OR var3 LIKE '%other%'
    AND var4 NOT LIKE '%email%'
    GROUP BY `var3`
")

# Select distinct (ie. unique) values by some ID for deduplication

newData <- sqldf("
    SELECT DISTINCT
    *
    FROM Data1
    GROUP BY `var3`
")

# Join 2 data sets where there are missing values and you are seeking the deltas to focus on

deltas <- sqldf("
    SELECT
    *
    FROM data1
    WHERE ID NOT IN
        (
            SELECT data1.ID FROM data1
            JOIN data2 USING (ID)
            WHERE data2.ID != 'NA'
        )
")

# Joining data sets with different linking ID labels

dataNew <- sqldf("
        SELECT
        *
        FROM data1
        JOIN data2 ON data1.var1 = data2.var2
")
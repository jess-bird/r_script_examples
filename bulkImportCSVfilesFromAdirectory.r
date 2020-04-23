# Bulk import csv files from a directory

folder <- "/path/to/folder/with/CSVs/to/import/"

file_list <- list.files(path = folder, pattern="*.csv")

for (i in 1:length(file_list)) {
    assign(file_list[i],
        read.csv(paste(folder, file_list[i], sep=''))
    )
}


# To append all imported files into 1 data set

dataSetCombined <- rbind(ls())

# To change into data table format for faster processing

library(data.table)
dataSetCombined <- as.data.table(dataSetCombined)

# To clear imported files from memory once analytics are extracted

rm(
    file_list,
    folder,
    i,
    list,
    x
)

# Obtain unique IDs
dataSetCombinedUniqueIDs <- unique(dataSetCombined$IDkey)

# Transform to data table format for faster processing
dataSetCombinedUniqueIDs <- as.data.table(dataSetCombinedUniqueIDs)
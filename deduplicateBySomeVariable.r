# Deduplicate by some variable
# This creates a new data set by deduplicating by some variable, say IP address or email, from the old data set
dataNew <- unique(dataOld[!duplicated(dataOld$var1),])
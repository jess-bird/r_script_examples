# Using the anti grep

dataNew <- dataOld[
    !grepl(
        "someTerm",
        dataOld$var1
    ),
]
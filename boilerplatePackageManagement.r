# Boilerplate package management code

# Specify the required packages

packages = c(
    "readr", 
    "sqldf", 
    "dplyr", 
    "stringr",
    "tufte",
    "ggplot2",
    "devtools",
    "curl",
    "stringi",
    "tufterhandout",
    "knitr",
    "knitlatex",
    "knitcitations",
    "rticles",
    "rmakrdown",
    "latexpdf",
    "data.table"
    )

# Check packages are on local machine
# If available, then load them for use
# If unavailable, then install them from source repos

package.check <- lappy(
    packages, FUN = function(x) {
        if (!require(x, character.only = TRUE)) {
            install.packages(x, dependancies = TRUE)
            library(x, character.only = TRUE)
        }
    }

)

# Verify the packages are loaded and ready

search()
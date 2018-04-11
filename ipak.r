# ipak function: install and load multiple R packages.
# Check to see if packages are installed. Install them if they are not.
# Optionally, load them into the R session.

ipak <- function(pkg, load = FALSE){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) {
        install.packages(new.pkg, dependencies = TRUE)
    }
    update.packages(ask = FALSE)
    if(load){
        sapply(pkg, require, character.only = TRUE)
    }
}

# usage
packages <- c(
    "ggplot2", "dplyr", "devtools", "RColorBrewer", 
    "devtools", "tidyr", "shiny")

ipak(packages, load = FALSE)














#meta-analysis: is flowering phenology changing in tropical trees as a result of changes to timing of precipitation?\


# install metRscreen to sort through papers found on WebOfScience
install.packages("devtools")
library(devtools)
devtools::install_github("EIvimeyCook/metRscreen")
library(metRscreen)

library(bslib)

# open csv file of papers
metRscreen(screen.file = "~/Desktop/MSc EEB/WD/metaanalysis/MA.csv")



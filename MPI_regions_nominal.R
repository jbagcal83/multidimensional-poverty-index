# MPI nominal data only
# There are 14 regions represented in the data

library(tidyverse)
library(qcc)
regions <- read_csv("MPIRegions.csv")
regions_table <- table(regions$Region)

pareto.chart(regions_table, ylab="Frequency",
             main="Pareto Chart of Frequencies \n of Regions in MPI Data")
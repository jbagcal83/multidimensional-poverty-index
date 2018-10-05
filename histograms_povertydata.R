#poverty data histograms

hist(poverty$`Intensity of Deprivation Rural`,
                           breaks=10, xlab="Intensity of Deprivation
                           (rural)", ylab="percentage", main="Intensity of Deprivation 
                           in Rural Areas of Developing Countries", freq=FALSE)

hist(poverty$`Intensity of Deprivation Urban`, breaks=10,
     xlab="Intensity of Deprivation (urban)", main="Intensity
     of Deprivation in Urban Areas of Developing Countries", freq=FALSE)

hist(poverty$`MPI Urban`, xlab="MPI Rural", main="MPI of Rural
     areas in Developing Countries", freq=FALSE)

hist(poverty$`MPI Rural`, xlab="MPI Urban", main="MPI or Urban
     areas in Developing Countries", freq=FALSE)


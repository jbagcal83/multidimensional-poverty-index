# dataset obtained on kaggle.com
# headcount ratio is the percentage of people in poverty
# (multidimensional poverty) per country
# MPI = 


poverty <- read_csv("R/MPI_national.csv")

p <- ggplot(poverty, aes(x = `Headcount Ratio Urban`, 
                         y = `Intensity of Deprivation Urban`)) + 
  geom_point(aes(color=`Headcount Ratio Urban`))

p2 <- p + geom_point(aes(x = `Headcount Ratio Rural`,
                          y = `Intensity of Deprivation Rural`),
                     color = "red") +
                         xlab("Headcount Ratio") +
                          ylab("Intensity of Deprivation") + geom_smooth(method="lm") +
  ggtitle("Intensity of Deprivation vs. Headcount Ratio")

p2

p3 <- ggplot(poverty, aes(x = `MPI Urban`, 
                          y = `Intensity of Deprivation Urban`)) + 
  geom_point(aes(color = `MPI Urban`))

p4 <- p3 + geom_point(aes(x = `MPI Rural`,
                          y = `Intensity of Deprivation Rural`),
                      color = "red") +
  xlab("MPI") + ylab("Intensity of Deprivation") +
  ggtitle("Intensity of Deprivation vs. MPI")


# dataset obtained on kaggle.com
# headcount ratio is the percentage of people in poverty
# (multidimensional poverty) per country


poverty <- read_csv("R/MPI_national.csv")

p <- ggplot(poverty, aes(x = `Headcount Ratio Urban`, 
                         y = `Intensity of Deprivation Urban`)) + 
  geom_point(aes(color='Headcount Ratio Urban'))

p2 <- p + geom_point(aes(x = `Headcount Ratio Rural`,
                          y = `Intensity of Deprivation Rural`)) +
                         xlab("Headcount Ratio") +
                          ylab("Intensity of Deprivation") + geom_smooth(method="lm") +
  ggtitle("Urban and Rural Headcount Ratio vs Deprivation Intensity")

p2

# headcount ratio = people in actual poverty in each country
# divided by total population in each country


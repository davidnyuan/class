# Exercise-4

# Set up: load `dplyr` and `ggplot2`
library(dplyr)
library(ggplot2)

# Read, and then `source` the data-prep.R file. The `all.data` variable is now available
<<<<<<< HEAD
source('./data-prep.R')

# Create a column of percentage of registered voters who voted
View(all.data)
all.datea <- all.data %>%
                mutate(pct.voted = total.voted/registered.votes)

# Start by making a new `ggplot` with `all.data` as the data (no geometry yet)
# What do you see?

hist(all.data$pct.voted)
plot(all.data$total.population, all.data$pct.voted)

# Draw a scatter plot (with point geometry) with for the `all.data` set, 
# with the `total.population` mapped to the x-position and `registerd.voters` mapped to the y-position.

ggplot(data = all.data) + 
  geom_point(mapping=aes(x=total.population, y=registered.voters))

ggplot(data = all.data) + 
  geom_point(mapping=aes(x=registered.voters, y=pct.voted, color=total.population), color='blue')
=======
source("./data-prep.R")

# Create a column of percentage of registered voters who voted
all.data <- all.data %>% 
            mutate(pct.voted = total.voted/registered.voters)

# Start by making a new `ggplot` with `all.data` as the data (no geometry yet)
# What do you see?
ggplot(data = all.data)

# Draw a scatter plot (with point geometry) with for the `all.data` set, 
# with the `total.population` mapped to the x-position and `registerd.voters` mapped to the y-position.
ggplot(data = all.data) +
  geom_point(mapping = aes(x = total.population, y = registered.voters))
>>>>>>> a387e3e45d2a9c50a46596e6fb108fbbe80f0839

# Draw a scatter plot (with point geometry) with for the `all.data` set, 
# with the `total.population` mapped to the x-position and `pct.voted` mapped to the y-position.
# Color the points as "blue"
ggplot(data = all.data) +
  geom_point(mapping = aes(x = total.population, y = pct.voted), color="blue")

# Create the same scatter plot as above, but put the county names where the dots are
ggplot(data = all.data) +
  geom_text(mapping = aes(x = total.population, y = pct.voted, label = county))

# Draw a scatter plot comparing the female percentage to the percent voted
# Size the points by the population of the county
ggplot(data = all.data) +
    geom_point(mapping = aes(x = female.percentage, y = pct.voted, size = total.population))

# Draw a line graph comparing the total population to the percent male
# Make it a green line
ggplot(data = all.data) +
  geom_line(mapping = aes(x = total.population, y = male.percentage), color = "green")

library(tidyverse)

df <- read.csv("cleaned_data.csv")

# Summary statistics
summary(df)

# Disaster type count
table(df$Disaster_Type)

# Summary by disaster type
df %>% group_by(Disaster_Type) %>%
  summarise(
    Avg_Magnitude = mean(Magnitude),
    Avg_Wind = mean(Wind_Speed),
    Avg_Rain = mean(Rainfall),
    Avg_Temp = mean(Temperature),
    Avg_Humidity = mean(Humidity)
  )

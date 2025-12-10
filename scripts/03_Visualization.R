library(tidyverse)

df <- read.csv("cleaned_data.csv")

# Create output folder if not exists
if(!dir.exists("output/plots")) dir.create("output/plots")

# 1. Disaster Type Frequency
p1 <- ggplot(df, aes(x = Disaster_Type)) +
  geom_bar(fill = "steelblue") +
  theme_minimal() +
  ggtitle("Disaster Type Frequency")
p1
ggsave("disaster_type_frequency.png", p1)

# 2. Magnitude Map (Latitude vs Longitude)
p2 <- ggplot(df, aes(Longitude, Latitude, color = Magnitude)) +
  geom_point() +
  theme_minimal() +
  ggtitle("Magnitude by Geographic Location")
p2
ggsave("output/plots/magnitude_map.png", p2)

# 3. Wind Speed vs Rainfall
p3 <- ggplot(df, aes(Wind_Speed, Rainfall, color = Disaster_Type)) +
  geom_point() +
  theme_minimal() +
  ggtitle("Wind Speed vs Rainfall")
p3
ggsave("output/plots/wind_rainfall.png", p3)

print("PLOTS SAVED ✔")

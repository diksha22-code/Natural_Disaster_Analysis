install.packages("lubridate")
install.packages("tidyverse")

library(tidyverse)
library(lubridate)

# Load dataset
df <- read.csv("natural_disaster_dataset.csv")

# View structure
str(df)
head(df)

# Fix column names (remove extra spaces or dots)
names(df) <- make.names(names(df))

# Convert Date column
df$Date <- as.Date(df$Date, format = "%d-%m-%Y")



# Convert correct numeric columns
numeric_cols <- c("Latitude", "Longitude", "Magnitude", "Depth",
                  "Wind_Speed", "Rainfall", "Temperature",
                  "Humidity", "Historical_Frequency")

df[numeric_cols] <- lapply(df[numeric_cols], as.numeric)

# Remove duplicates
df <- df %>% distinct()
df
# Replace missing values with median
df <- df %>%
  mutate(across(all_of(numeric_cols), ~ replace_na(., median(., na.rm=TRUE))))

# Save cleaned dataset
write.csv(df, "cleaned_data.csv", row.names = FALSE)

print("CLEANING COMPLETE ✔")

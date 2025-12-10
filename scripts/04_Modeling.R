library(tidyverse)
library(caret)

df <- read.csv("cleaned_data.csv")

set.seed(123)

model <- train(
  Magnitude ~ Depth + Wind_Speed + Rainfall + Temperature + Humidity +
    Historical_Frequency,
  data = df,
  method = "rf"
)

print(model)

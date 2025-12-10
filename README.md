# 🌍 Natural Disaster Analysis Project

## 📌 Project Overview

This project focuses on analyzing global natural disasters such as floods, cyclones, earthquakes, hurricanes, and droughts. Using real-world datasets, the analysis identifies trends, patterns, and insights related to:

1. **Magnitude / Intensity**
2. **Wind Speed**
3. **Rainfall**
4. **Temperature Impact**
5. **Humidity Levels**
6. **Seasonal & Regional Patterns**

The goal is to build a clear understanding of disaster behavior and help in risk assessment, preparedness, and early-warning insights.

---

## 📂 Project Structure

```
Natural_Disaster_Analysis/
│
├── data/
│   ├── natural_disasters_dataset.csv
│
├── scripts/
│   ├── 01_Load_and_Clean_data.R
│   ├── 02_EDA.R
│   ├── 03_Visualization.R
│   ├── 04_Modeling.R
│
├── outputs/
│   ├── disaster_type_frequency.png
│   ├── magnitude.png
│   ├── wind_rainfall.png
│   ├── cleaned_data.csv
│
├── README.md
```

---

## 🔧 Tools & Technologies

* **Programming Language:** R
* **Libraries:**

  * dplyr
  * ggplot2
  * lubridate
  * tidyr
* **Version Control:** Git & GitHub

---

## 🧹 Data Cleaning Steps

1. Removed missing and duplicate values.
2. Converted text date formats into `Date` class.
3. Trimmed hidden UTF characters and extra spaces.
4. Standardized columns for Magnitude, Wind Speed, Temperature, Humidity.
5. Handled invalid ranges and inconsistent units.

---

## 📊 Analysis Performed

1. **Descriptive Statistics**

   * Mean, median, max, min for all key variables.
2. **Disaster Type Comparison**

   * Average magnitude, rainfall, humidity, temperature, wind speed.
3. **Trend Analysis**

   * Year-wise disaster frequency.
4. **Correlation Analysis**

   * Relationship between temperature, humidity, and rainfall.
5. **Visualizations**

   * Line charts, bar charts, scatter plots, heatmaps.

---

## 📈 Key Insights

* Temperature and humidity show strong seasonal dependency.
* Cyclones have the highest average wind speed.
* Floods show high correlation with rainfall levels.
* Earthquakes don't correlate with climate variables.

---

## 🧠 Future Enhancements

* Add forecasting using ARIMA / Prophet.
* Build a dashboard with R Shiny or Power BI.
* Add geospatial mapping using leaflet.

---


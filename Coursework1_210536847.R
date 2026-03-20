#' ---
#' title: MTH6139 Time Series Coursework 1
#' author: SHAMIL PATEL
#' date: Spring term 2026
#' ---

# 1. Load packages ------------------------------------------------------------
library(readr)
library(dplyr)
library(ggplot2)
library(prophet)

# 2. Load and inspect the data ------------------------------------------------
retail_sales_data <- read_csv("data/example_retail_sales.csv")
retail_sales_data <- retail_sales_data %>%
    mutate(ds = as.Date(ds))

str(retail_sales_data)
head(retail_sales_data)
summary(retail_sales_data$y)

# 3. Visual exploration -------------------------------------------------------
plot(retail_sales_data$ds, retail_sales_data$y, type = "l",
     main = "Retail Sales Over Time",
     xlab = "Date", ylab = "Retail Sales",
     col = "blue", lwd = 2)

# 4. Simple linear trend model -----------------------------------------------
retail_sales_data$time_index <- seq_len(nrow(retail_sales_data))
retail_sales_trend_model <- lm(y ~ time_index, data = retail_sales_data)
summary(retail_sales_trend_model)
retail_sales_data$linear_fit <- predict(retail_sales_trend_model)

# 5. Prophet model ------------------------------------------------------------
retail_sales_model <- prophet(retail_sales_data[, c("ds", "y")],
                              yearly.seasonality = TRUE)
future_1yr <- make_future_dataframe(retail_sales_model, periods = 12, freq = "month")
forecast_1yr <- predict(retail_sales_model, future_1yr)

# 6. Component plots ----------------------------------------------------------
plot(retail_sales_model, forecast_1yr)
prophet_plot_components(retail_sales_model, forecast_1yr)

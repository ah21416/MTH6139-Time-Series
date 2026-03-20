This project explores a retail sales time series using Meta's Prophet forecasting system in R. The main aim is to analyse the historical behaviour of the series, identify visible patterns such as trend and seasonality, and then use Prophet to produce forecasts for future periods. The project is written in R Markdown and is designed to knit into an HTML report. 

Project summary
The dataset used in this project contains retail sales observations over time. Since Prophet requires the data to be in a dataframe with two columns named `ds` and `y`, the dataset is prepared in that format before modelling begins.
The report includes:
- an introduction to the dataset and the purpose of the analysis
- exploratory plots of the retail sales series
- comments on trend and seasonal behaviour
- a simple linear regression used as an initial benchmark for understanding long-run growth
- a Prophet forecast for future periods
- Prophet component plots to separate the trend and seasonal effects
- inspection of forecast values and uncertainty intervals
- and an additional extension using a log transformation to investigate whether changing variance affects the modelling approach
- The final output is an HTML document that reads like a short analytical article rather than a list of code commands

Why I chose this project
I chose this retail sales dataset as it is closely connected to real business forecasting problems. Retail sales data is a good example of a time series that may contain both longer-term movement and repeating seasonal patterns, which makes it well suited for Prophet. 
Another reason for choosing this project is that it has value beyond the module itself. Forecasting sales is relevant in areas such as business planning, demand estimation, operations, and analytics. This makes the project useful not only for coursework submission, but also as something that can be discussed in interviews or added to a CV as an example of applied forecasting work in R.
I also chose this project because Prophet is a modern and widely used forecasting tool. It offers a good balance between accessibility and practical value. This has allowed me to focus not only on producing a forecast, but also on understanding how trend and seasonality contribute to the model output.


**#Project Report: Analyzing ENSO Dataset using ARIMA Model**

**Introduction:**
The purpose of this mini project is to analyze the ENSO (El Niño-Southern Oscillation) dataset using SAS and the ARIMA (AutoRegressive Integrated Moving Average) model. The ENSO dataset provides information on various climate indicators, such as sea surface temperature anomalies, atmospheric pressure, and wind patterns, which are crucial for understanding global climate patterns and predicting weather phenomena.

**Data Description:**
The ENSO dataset contains historical data on ENSO indices from January 1950 to December 2017. It includes variables such as year, month, sea surface temperature anomalies, atmospheric pressure, and other climate indicators. The dataset consists of 168 observations.

**Data Exploration:**
The analysis begins with a data exploration phase using SAS procedures. The `PROC CONTENTS` procedure is used to examine the structure and contents of the dataset, providing an overview of the variables and their attributes. Additionally, the `PROC PRINT` procedure is used to display the first five observations of the dataset, giving a glimpse of the data values and format.

**Data Preparation:**
Before modeling, the dataset is sorted by month using the `PROC SORT` procedure to ensure that the data is in chronological order, which is essential for time series analysis.

**ARIMA Modeling:**
The main analysis involves fitting an ARIMA model to the ENSO dataset. The `PROC ARIMA` procedure is used for model identification, estimation, and forecasting. Initially, the `IDENTIFY` statement is used to identify the appropriate lag order for the ARIMA model. In this case, the variable `year` is used for identification. The `ESTIMATE` statement is then used to estimate the parameters of the ARIMA model, specifying a seasonal component with a lag of 12 months (`q=1`) and using the maximum likelihood method (`method=ml`). The `FIT` statement is used to fit the ARIMA model to the data. Subsequently, a forecast is generated for the next 12 months using the `FORECAST` statement, with an interval of one month. The forecasted values are stored in a new dataset named `myforecast`.

**Additional Analysis:**
Further analysis is conducted by focusing on the variable `pressure` with a lag of 1 month. The `IDENTIFY` statement is used to identify the lag order for the ARIMA model, and the `ESTIMATE` statement is used to estimate the parameters of the model with an autoregressive component (`p=2`) and a moving average component (`q=2`). The `FORECAST` statement is used to generate a forecast for the next 12 months with a one-month interval. The significance level for parameter estimation is set to 0.05 (`alpha=0.05`).

**Conclusion:**
In conclusion, this mini project demonstrates the application of the ARIMA model to analyze the ENSO dataset in SAS. The analysis includes data exploration, preparation, model identification, estimation, and forecasting. The results provide insights into the temporal patterns of ENSO indices, which are valuable for understanding and predicting climate variability and its impacts on weather patterns.

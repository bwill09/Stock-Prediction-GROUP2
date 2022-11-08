# Stock-Prediction-Group2

## Team Members - Roles 
* [Min Zhao](https://github.com/mzhao12) - Framework Creation (Circle)
* [Joshua Lee](https://github.com/lee1woo) - (Triangle)
* [Jacob Kotcher](https://github.com/jkotcher) - X
* [Alford Wilson](https://github.com/bwill09) - Information Manager (Square)

## Roadmap

<img width="1099" alt="Roadmap" src="https://user-images.githubusercontent.com/106555873/198386200-7bdf0284-2749-4c66-ade1-ff9bdb42cf02.png">


## Topic
Examining Stocks Data and predicting future stock price using the S&P ETF SPY as well as energy sector stock price using Energy ETF VDE. For further analysis, we will be looking at possible trends among healthcare and energy stocks from 2004 to 2021 and how they performed during the two large market crashes of 2008 and 2020. 

## Reasoning
We were interested in looking at whether it is possible to predict stock trends to maximize return on investment. 


## Datasource
The data we are using is a dataset of historical prices of S&P 500 ETF called SPY from Yahoo Finance and runs from 2001-2021. In addition, we collected the dataset of historial prices of Healthcare ETF VHT and Energy ETF VDE that runs from 2004-2021. 


## Question(s) to answer

Can we use a linear regression model to predict stock trends in the S&P, energy and healthcare sector?

Is there a pattern between stock price of energy and healthcare ETFs during the two stock market crashes? 


## Technologies Used

For this project the technologies that we will be using is the Pandas library in Python.  We will also be using Github/Postgres as our database technology.  Github will be the main code versioning technology used.  In addition to that we will also use either Tableau or HTML for our dashboard.

## Database 

Our data source are CSV files. As such, we will convert them to a dataframe using Pandas library in Python.  We will be storing the data in a SQL database and the schema for which is included as stock_schema.sql.  In this database are two of the tables that are to be used during this project.  We will be providing an ERD since this is a SQL database.

## Dashboard

[gSlides](https://docs.google.com/presentation/d/1SRz74vQcFuJRuRonviLgewAgyzgCDq6IKz8qauUFQis/edit#slide=id.g177efd8d880_2_5) for our presentation 

[Tableau Dashboard:](https://public.tableau.com/views/StockAnalysis_16675294030350/StockComparisonDashboard?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)


## Machine Learning Model 

What are the data sources that we take in and what are the outputs? How is this model connected to the database? 

The data sources that we take in are from S&P 500 ETF called SPY and historial prices of Healthcare ETF VHT and Energy ETF VDE that runs from 2004-2021. The outputs of this dataset include open price, high price, low price, and trading volume. We would be seeing what patterns, if any, exists. 

What kind of model will we be using?

- We will be using a supervised learning model. Using these price from our historical data, we can predict future prices.
- A linear regression will take in a set of factors and attempt to learn patterns to predict a future value. 

Is this a regression problem, a classification problem, or a combination of the two?

- At the moment, this is a regression problem. 

- If we end up coming up with a status colum (for example, if an industry sector average is above or below a certain arbitrary number, that we classify as high or low, then we can use this to advise whether to buy or sell. If we were to include this, this would be a logistic regression model. 

- In the code uploaded to the Github, we created a DataFrame from the CSV file and created a line graph for the healthcare industry and energy industry. An initial overview showed us that the healthcare industry was not as susceptible to market crashes as the energy industry. Further analysis will be performed in the days to come. Something to consider: the energy industry's ETF was way more volatile, with many dramatic increases and decreases in the stock price. We saw noticeable dips during years that were surprising, including but not limited to 2014 and 2016. A further look into whether there were any regulatory policies or laws that were passed during the time would be beneficial to the analysis. Furthermore, we intend to look at which energy companies comprise this energy ETF to see if the type of energy company (renewable vs. non-renewable) explains these surprising initial results.

- We also started our machine learning code. At the moment, we used a linear regression, which is included as the [Final_Project_Code.ipynb](https://github.com/bwill09/Stock-Prediction-Group2/blob/main/Final%20Project%20Code.ipynb) Currently, the model allows a user to input the Open price, High price, and Low price to predict the Close price. We started off with this to test our initial machine learning code. We intend to further this analysis by performing a linear regression using imblearn. We ran into some technical issues during some of the iterations of performing imblearn linear regression. For the purpose of submission, we simplified it using sklearn regression, but we will further troubleshoot the imblearn linear regression. 

### Data preprocessing
There were three datasets we used and all three had the same columns present.  These included Date, open, high, low, close, adjusted close and volume.  Since these datasets comprise a small number of columns there is no need to drop unuseful columns.  Another piece of data preprocessing that could be done but for this analysis does not need to be is to change the column values from decimal numbers to whole numbers. We used the loc method for the Healthcare and Energy ETF datasets to analyze the Open price and Close price from the years 2004 to 2021. We graphed both lines on the same graph initially, but found that the lines overlayed on top of one another. As such, we intend to make four separate charts to better visualize this data. We also had a discussion whether to use the Close Price or Adjusted Close Price. Upon initial analysis, we may change our variable.

### Feature Selection and engineering
For our model we chose to use the open and the close price as our features for predicting future prices.  We felt that these two variables would be best suited for our model because it would allow for accurate prediction.

### Training & Testing
For our linear regression model we chose to do a 70/30 split of training and testing data.  Also as part of the training and testing of the linear model we examined the open and closing price of stocks through time to begin determining how best to apply the linear model.

### Model Choice
Linear Regression Model

Benefits
1. Simple
2. accurate
3. Works well with numeric data

Limitations
1. Not complex
2. Can tell you about a relationship between two variables but does not go deeper than that to give more insight.  Additional tests and statistical analyses are sometimes needed.

### Future recommendations
- In the event that our machine learning code remains with sklearn regression, we have discussed the possibility of creating an interactive component where a user can input the Open price, High price, and Low price of the SPY ETF stock price to predict the Close price. This would be done using HTML, Javascript, and Flask.





[Min](https://github.com/mzhao12) [Joshua](https://github.com/lee1woo) [Jacob](https://github.com/jkotcher) [Alford](https://github.com/bwill09) 

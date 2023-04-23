Answer the questions and problems below to the best of your ability. You may use any outside resources necessary to help in your answer. For the problems, you may get partial credit if you show/explain your work. You may use Excel, R, Python, Tableau, or any other tool you wish but we highly value answers made using R/Python/Tableau.


GOJEK directors have asked BI analysts to look at the data to understand what has happened during Q1 2016 and what they should do to maximize the revenue for Q2 2016. Given the data in Problem A: a. What are the main problems that we need to focus on? b. Given the data in Table B, how will you maximize the revenue if we only have a budget of IDR 40,000,000,000? c. Present your findings and concrete solutions for a management meeting

Given the data in Problem B, follow the prompts for the SQL queries.

Think like a scientist! How would you use an experiment to answer Problem C?

Be an Analyst - please complete the case studies in Problem D.


--------------------------------------------------------------------------------------------------------------------------------------------
Part 3

Our GO-FOOD service in Surabaya performed very well last month - they had 20% more completed orders last month than the month before. The manager of GO-FOOD in Surabaya needs to see what is happening in order to constantly maintain this success for the next month onwards. 

What quantitative methods would you use to evaluate the sudden growth? How would you evaluate the customers' behavior?
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Part 2 

Problem Using multiple linear regression, predict the total_cbv. 
1. Create 1 model for each service. 
2. Forecast period = 2016-03-30, 2016-03-31, and 2016-04-01 
3. Train period = the rest List of predictors to use: Day of month Month Day of week Weekend/weekday flag (weekend = Saturday & Sunday) 
4. Pre-processing (do it in this order): 
41.Remove GO-TIX 
42.Keep only `Cancelled` order_status 
43.Ensure the complete combinations (cartesian product) of date and service are present 
44.Impute missing values with 0 Create is_weekend flag predictor (1 if Saturday/Sunday, 0 if other days) 
45.One-hot encode month and day of week predictors 
46.Standardize all predictors into z-scores using the mean and standard deviation from train-period data only 
5.Evaluation metric: MAPE Validation: 3-fold scheme. Each validation fold has the same length as the forecast period.
6.Question 1  - After all the pre-processing steps, what is the value of all the predictors for service = GO-FOOD, date = 2016-02-28? 
7.Question 2 -  Show the first 6 rows of one-hot encoded variables (month and day of the week)
8.Question 3 -  Print the first 6 rows of the data after pre-processing for service = GO-KILAT. Sort ascendingly by date Question 4 - Compute the forecast-period MAPE for each service. Display in ascending order based on the MAPE 
9.Question 5 -  Create graphs to show the performance of each validation fold. One graph one service. x = date, y = total_cbv. Color: black = actual total_cbv, other colors = the fold predictions (there should be 3 other colors). Only show the validation period. For example, if rows 11, 12, and 13 were used for validations, then do not show the other rows in the graphs. Clearly show the month and date on the x-axis 

# Customer_Churn_Project

![3](https://user-images.githubusercontent.com/73450637/111884435-03feda00-8998-11eb-80b0-3eac79c9b2e8.png)

## Overview of the Project

Customer Churn [or attrition] is considered to be one of the most important metrics of a growing business to evaluate. Customer churn is the percentage of customers that stopped using your company's product or service during a certain time frame. Through our project we are trying to build an algorithm that predicts whether a user will churn after their subscription expires with a leading music streaming service KKBOX [Asia's leading music streaming service]. 

![4](https://user-images.githubusercontent.com/73450637/111884843-90aa9780-899a-11eb-998b-1197132736f8.png)

By the end of the project we are anticipating to discover new insights to why users leave so the service can be proactive in keeping users. 

The following technical analysis are to be done:

> 1. Preprocessing Data for a Machine Language Model
> 2. Compile, Train, and Evaluate the Model
> 3. Optimize the Model

## Resources

* Data Source: [Kaggle WSDM-KKBOX's Churn Prediction Challenge] (https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data)
* Software: Anaconda Navigator 1.9.12, Conda 4.8.4, Jupyter Notebook 6.0.3

## Churn Comparison Outcomes [Listing only 5]

### 1. Comparing attrition rate with gender

![a](https://user-images.githubusercontent.com/73450637/111888006-2e0fc680-89af-11eb-918c-4ffcab162b8c.png)

There is no much difference in attrition rate considering gender as 6.4% and 5.8% of male and female users decided to cancel the suscription.

### 2. Comparing attrition rate by cities

![b](https://user-images.githubusercontent.com/73450637/111888018-47187780-89af-11eb-9387-f890855ae15f.png)

The city ID 13 has highest number of subscribers that didnot opt out of subscription [20.2%] and with that many users they have the highest attrition rate as well [2.60%].

### 3. Comparing attrion rate by age category

![c](https://user-images.githubusercontent.com/73450637/111888023-58618400-89af-11eb-9fe8-6209e89f86de.jpg)

The 3rd age category group [age between 20-30] has the highest number of subscribers and churned customers as well. Upon considering the age category, no much subscribers are there in old age groups. 


### 4. Comparing attrion rate by registration method

![d](https://user-images.githubusercontent.com/73450637/111888030-657e7300-89af-11eb-940d-fdc0ea6b4acf.png)

Users with registration method [ID - 9] has the highest rate of attrition with 6.7%. 

### 5. Comparing attrion rate by registration year

![e](https://user-images.githubusercontent.com/73450637/111888037-716a3500-89af-11eb-8cfb-4bdcd71fedca.png)

Upon considering the registartion year, the average churn rate over the years have been almost within 0.3-1.7% which shows no specific trend in a particular year. 

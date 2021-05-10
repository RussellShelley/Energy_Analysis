# Energy_Analysis


Electric vehicles currently make up only about 2% of all cars sold in the US. Many drivers have put off purchasing electric vehicles until now for many reasons such as expense and concerns over the availability of plug-in recharge points. However, current trends show that these statistics are likely to change. 

## Project Overview

The purpose of this project is to explore an overall analysis of the electric vehicle car market, availability of charging stations, and potential climate implications. We chose this topic because of its immediate relevance as well as potential large scale global and humanitarian impact. 

View an In-Depth Presentation of our Project on Google Slides [Here](https://docs.google.com/presentation/d/1yLtCgrkCrZDrA3M79BOugkTuRkmWJuCp/edit#slide=id.p1)

## Process

**Data Collection**
* We will collect data from various resources to identify the likelihood of owning an electric vehicle in comparison to demographic and geographic location, such as, proximity to charging stations, county of residence, household income, gender, education, employment, driving frequency, and more. In 2019, the California Energy Commission ran a [California Vehicle Survey](https://www.energy.ca.gov/data-reports/surveys/california-vehicle-survey) in partnership with the NREL. The 2019 survey had over 6,000 household and commercial survey respondents, including over 700 PEV owners and 300 FCEV owners. The downloadable dataset can be found [here](https://www.nrel.gov/transportation/secure-transportation-data/tsdc-2019-california-vehicle-survey.html).

**Preprocessing and Machine Learning**
* This data will be consolidated into a database and the variables will be applied to a Machine Learning model to predict if household income, education, income, geographic location (county) is a factor in determining ownership. 

**Analysis, Presentation, and Visualization**
* The overall analysis will be written into a Google Slide presentation viewable [here](https://docs.google.com/presentation/d/1yLtCgrkCrZDrA3M79BOugkTuRkmWJuCp/edit#slide=id.p1), as well as visualized on a webpage [here](https://amylio.github.io/Project_Web_Test/).

## Technology

![techpath](https://github.com/RussellShelley/Energy_Analysis/blob/main/Technology/Technology.jpg)

* Data is collected and preprocessed in `Jupyter Notebook` using `Pandas` and `Python`.
* Preprocessed data is connected and imported into `Postgres` using `pgAdmin`.
* The database is then connected to the Machine Learning model that has been created using `Jupyter Notebook`
* The presentation will be displayed via `Google Slides`, as well as, an interactive webpage hosted by `GitHub Pages` using `HTML`, `CSS` and `Javascript`

## Database

Our collective database includes five tables, all collected from one large survey of electric vehicle ownership across California (4,000 respondents). The database was created in PostgreSQL (PGadmin), and is now stored on Amazon Web Services RDS (free tier). This allows any team member to link to - and update - the collective database. There are greater than 2 joins within SQL and there are two additional joins within our Jupyter Notebook Machine Learning model. 

Additionally, the database meets all of the criteria requested for this unit's deliverables. This includes:
* _The database stores static data for use during the project._ Our static data is stored in Amazon Web Services Relational Database Service, and is used to host the `Postgres` database that is used to run the machine learning model.
* _The database interfaces with the project in some format._ The database interfaces direclty with the machine learning model, and is stored on AWS RD. View a screenshot of the AWS RDS page [here](https://github.com/RussellShelley/Energy_Analysis/blob/main/Images/AWS.PNG)
* _Includes at least two tables._ : Our database includes 5 tables, `PostgresSQL` - was used to create these tables and joining was preprocessed for datasets for the ML model. Click [here](https://github.com/RussellShelley/Energy_Analysis/blob/main/Images/PGadmin_page.PNG) to view a screenshot of the PGadmind page.
* _Includes at least one connection string_ : The data is connected via schalchemy to the machine learning model. Click [Here](https://github.com/RussellShelley/Energy_Analysis/blob/main/Machine_Learning/ML_Decision_Tree_And_Random_Forest.ipynb) to view the the connection string in the machine learning model.
* _The ERD is displayed_ Click [here](https://github.com/RussellShelley/Energy_Analysis/blob/r_verhofste/SQL%20Database/QuickDBD.png) to view the ERD.

## Machine Learning Model

View the Machine Learning Model [Here](https://github.com/RussellShelley/Energy_Analysis/blob/main/Machine_Learning/ML_Decision_Tree_And_Random_Forest.ipynb)

In this machine learning analysis, we look to explore the relationship of various demographic variables with electric vehicle ownership to see if we can predict whether someone is likely to own an electric vehicle or not.  

**ML Goal:** Explore the relationship of various demographic variables with electric vehicle ownership to make future predictions on likelihood of EV Ownership.

**Implications:** By finding key variables that contribute to whether someone is likely to own an electric vehicle and comparing those demographics to geographic data such as number of EV Charging Stations, we can propose to public policy makers where might be the next best markets for installing charging stations.

**Demographic Data Explored:**
* Education
* Age
* Income
* Household size
* Number of Vehicles in the household
* And more...

### *Preliminary Data Preprocessing* 
View Code for the Data Preprocessing and Database Table Creations [here](https://github.com/RussellShelley/Energy_Analysis/blob/main/SQL%20Database/Data%20File%20Review-Practice1.ipynb)

Our model requires quite a bit in the ETL pipeline. 
* Reformat and load in data from the survey respondents: Survey Data Files are read into a dataframe in Jupyter Notebook using Python Pandas Library.
* Unique values are counted, unnecessary columns are dropped, csv files are then connected to a PostgreSQL Database. 
* Data is consolidated into an SQL database (later to be housed by AWS for web interactivity).
* Using SQL, a “Machine Learning Input” Table is created by running a Full Outer Join on the personal demographic table with the vehicle ownership table. 
* SQL code is then used to add a new column titled "ev_flag" and uses a filter conditional statement to check what type of vehicle the survey respondent owns. This Feature Engineering is described in further detail on the next slide. 
* One Hot Encoder is applied to ensure that all the columns will be numerical when running the model. 
* Data is scaled and normalized reducing the likelihood that large values will unduly influence the model.

### *Preliminary Feature Engineering, Feature Selection, and Decision-Making Process*
View Code for the Feature Engineering [here](https://github.com/RussellShelley/Energy_Analysis/blob/main/SQL%20Database/CREATE_ml_input_table.sql) and [here](https://github.com/RussellShelley/Energy_Analysis/blob/main/Machine_Learning/ML_Decision_Tree_And_Random_Forest.ipynb)

**Target:** Whether or not some owns an Electric Vehicle (1 for Yes, 0 for No)

**Features:** Demographic Data such as gender, employment, education, income, household size, etc.

**Feature Engineering:**
EV Ownership: SQL code is used to add a new column titled "ev_flag" and uses a filter conditional statement to check what type of vehicle the survey respondent owns. If the response is an Electric Vehicle (BEV) or Plug In Hybrid Electric (PHEV), then the ev_flag column outputs a 1 (for yes - respondent owns an electric vehicle). If the vehicle is a non-electric vehicle, the column displays a 0 (respondent does not own an electric vehicle). 

![Feature Selection](https://user-images.githubusercontent.com/73972332/116827328-4bf34e00-ab4d-11eb-9f49-4c98a87264a5.png)

### *Training and Testing Sets*
The dataset is split into training and testing sets. The model uses the training dataset to learn from it. It then uses the testing dataset to assess its performance. If we were to use the entire dataset to train the model, we wouldn't know how well the model will perform when it encounters unseen data. We use the SciKit Learn Library to split, train, and test the data.

![train test](https://user-images.githubusercontent.com/73972332/116827206-b8218200-ab4c-11eb-9314-e6501c021ea9.png)

### *Model Choice: Limitations and Benefits*
Because we are relating many variables, we will utilize both a Supervised Decision Tree and Random Forest Machine Learning Model. Supervised Machine Learning deals with labeled datasets. This approach is appropriate for this project because we will use current demographic data with knowledge of whether or not a survey respondent owns an electric vehicle to run predictions on future unknown datasets.

* **Decision Tree Benefits:** One of the most interpretable models, as they provide a clear representation of how the model works. Easy to classify or label objects by asking a series of questions designed to zero in on the true answer. 
* **Decision Tree Drawbacks:** Can become very complex and very deep, depending on how many questions have to be answered. Deep and complex trees tend to overfit to the data and do not generalize well.
* **Random Forest Benefits:** Instead of having a single, complex tree like the ones created by decision trees, a random forest algorithm will sample the data and build several smaller, simpler decision trees. Each tree is simpler because it is built from a random subset of features. Random forest algorithms are beneficial because they are robust against overfitting as all of those weak learners are trained on different pieces of the data, can be used to rank the importance of input variables in a natural way, can handle thousands of input variables without variable deletion, are robust to outliers and nonlinear data and run efficiently on large datasets.
* **Random Forest Drawbacks:** The main limitation of random forest is that a large number of trees can make the algorithm too slow and ineffective for real-time predictions. In general, these algorithms are fast to train, but quite slow to create predictions once they are trained.

### *Model Results*
**Accuracy:** 
Both models achieved an accuracy score of .90. This means that 90% of observation in the testing set were predicted correctly by the model. Because we have a Supervised Machine Learning dataset with binary outcomes, the accuracy of the predictions can be further analyzed by viewing the Confusion Matrices for the two models. In the Decision Tree Model, out of 4,242 Predicted True's, only 265 were false positives and out of 128 Predicted Falses, there were 149 False Negatives. There were more False Negatives than True Negatives in this result. In the Random Forest Model, out of 4,227 Predicted Trues, there were only 266 False Positives (very similar to the Decision Tree Results) and out of 233 Predicted Falses, there were 165 False Negatives. Again, there were more False Negatives than True Negatives in this model. 

**Precision:**
Precision, also known as positive predictive value (PPV), is a measure of how likely that a Predicted Positive is a True Positive. Precision is obtained by dividing the number of true positives (TP) by the number of all positives (i.e., the sum of true positives and false positives, or TP + FP). For our models below, both the Decision Tree and Random Forest achieved a high Precision score of .94. This means that out of 100 predicted positives, 94 were True Positives. 

**Sensitivty/Recall:**
Another way to assess a model's performance is with sensitivity, also called recall. Sensitivity is a measure of how many True Positives were correctly predicted. For our models below, both the Decision Tree and Random Forest achieved a high Recall Score of .96. This means that the model is 96% likely to correctly guess accurately if someone will own an electric vehicle or not. 

**F1 Score - Tradeoff Between Precision and Sensitivity:**
There is a fundamental tension between precision and sensitivity. Highly sensitive tests and algorithms tend to be aggressive, as they do a good job of detecting the intended targets, but also risk resulting in a number of false positives. High precision, on the other hand, is usually the result of a conservative process, so that predicted positives are likely true positives; but a number of other true positives may not be predicted. In practice, there is a trade-off between sensitivity and precision that requires a balancing act between the two. A useful way to think about the F1 score is that a pronounced imbalance between sensitivity and precision will yield a low F1 score. For our models below, both models achieved a high F1 Score of .95. 

**Decision Tree Results**

![decision tree](https://user-images.githubusercontent.com/73972332/116798859-940c6500-aaa8-11eb-991e-11bc9d5e94a9.png)

**Random Forest Results**

![Random Forest](https://user-images.githubusercontent.com/73972332/116798874-bb633200-aaa8-11eb-9fad-a43f2e36f714.png)

## Dashboard/Visualization

We will incorporate visualizations into a [Google Slides Deck](https://docs.google.com/presentation/d/1yLtCgrkCrZDrA3M79BOugkTuRkmWJuCp/edit#slide=id.p1) using `Tableau` and `Seaborn`, as well as create an interactive webpage. 

The website will be interactive in that users will be able to Toggle between tabs to switch pages. Content includes:
* **About** - Description of the project, Machine Learning usage and analysis of the results.
* **EV Information** - History, statistics, average charging cost and latest news from [Energy.ca.gov](https://www.energy.ca.gov) website.
* **Vehicle Population Map by Fuel Type** - Link to visual map generated using `Tableau` with the data collected of vehicle population by fuel type for the state of California.
* **Charging Station Finder** - Link to map of charging stations based on location that user can enter zipcode/address from [Openchargemap.org](https://openchargemap.org/site).
* **Consumption and Impact** - Visual map to correlate pollution data, EV population and energy consumption with EV manufacturing.

A working draft of webpage can be found [here](https://amylio.github.io/Project_Web_Test/)

![webpage1](https://github.com/RussellShelley/Energy_Analysis/blob/ALio_2/Visualization/Images/WebpageScreenShot.png)

## Resources

* [California Energy Commission](https://www.energy.ca.gov/)
* [US Census Bureau](https://www.census.gov/)
* [Data.gov](https://www.data.gov/)
* [OpenChargeMap](https://openchargemap.org/site)

## Project Team Members

* Russell Shelley - [GitHub Repository Owner](https://github.com/RussellShelley/Energy_Analysis)
* Angela Haverly - [Technology Master](https://github.com/RussellShelley/Energy_Analysis/tree/a_haverly)
* Robbe Verhofste - [Machine Learning Architect](https://github.com/RussellShelley/Energy_Analysis/tree/r_verhofste)
* Daniele Ruiz - [Database Guru](https://github.com/RussellShelley/Energy_Analysis/tree/d_ruiz)
* Valerie Achoa - [Data Analysis Expert](https://github.com/RussellShelley/Energy_Analysis/tree/va_achoa)
* Amy Lio - [Visualization and Experience Manager](https://github.com/RussellShelley/Energy_Analysis/tree/ALio)

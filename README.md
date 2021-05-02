# Energy_Analysis


Electric vehicles currently make up only about 2% of all cars sold in the US. Many drivers have put off purchasing electric vehicles until now for many reasons such as expense and concerns over the availability of plug-in recharge points. However, current trends show that these statistics are likely to change. 

## Project Overview

The purpose of this project is to explore an overall analysis of the electric vehicle car market, availability of charging stations, and potential climate implications. We chose this topic because of its immediate relevance as well as potential large scale global and humanitarian impact. 

## Process

**Data Collection**
* We will collect data from various resources to identify the likelihood of owning an electric vehicle in comparison to demographic and geographic location, such as, proximity to charging stations, county of residence, household income, gender, education, employment, driving frequency, and more. In 2019, the California Energy Commission ran a [California Vehicle Survey](https://www.energy.ca.gov/data-reports/surveys/california-vehicle-survey) in partnership with the NREL. The 2019 survey had over 6,000 household and commercial survey respondents, including over 700 PEV owners and 300 FCEV owners. The downloadable dataset can be found [here](https://www.nrel.gov/transportation/secure-transportation-data/tsdc-2019-california-vehicle-survey.html).

**Preprocessing and Machine Learning**
* This data will be consolidated into a database and the variables will be applied to a Machine Learning model to predict if household income, education, income, geographic location (county) is a factor in determining ownership. 

**Analysis, Presentation, and Visualization**
* The overall analysis will be written into a Google Slide presentation, as well as visualized on a webpage.

## Technology

![techpath](https://github.com/RussellShelley/Energy_Analysis/blob/main/Technology/Technology.jpg)

* Data is collected and preprocessed in `Jupyter Notebook` using `Pandas` and `Python`.
* Preprocessed data is connected and imported into `Postgres` using `pgAdmin`.
* The database is then connected to the Machine Learning model that has been created using `Jupyter Notebook`
* The presentation will be displayed via `Google Slides`, as well as, an interactive webpage hosted by `GitHub Pages` using `HTML`, `CSS` and `Javascript`

## Database

Our collective database includes five tables, all collected from one large survey of electric vehicle ownership across California (4,000 respondents). The database was created in PostgreSQL (PGadmin), and is now stored on Amazon Web Services RDS (free tier). This allows any team member to link to - and update - the collective database. There are greater than 2 joins within SQL and there are two additional joins within our Jupyter Notebook Machine Learning model. 
* Click [here](https://github.com/RussellShelley/Energy_Analysis/blob/r_verhofste/SQL%20Database/QuickDBD.png) to view the ERD.

* `PostgresSQL` - Used to create tables and joining preprocessed datasets for ML model.
* `AWS` Relational Database Service (RDS) - Cloud-based web service used to host the `Postgres` database that will be used to run the ML model.

## Machine Learning Model
In this machine learning analysis, we look to explore the relationship of various demographic variables with electric vehicle ownership. This Machine Learning model ties into our overall project in that by finding key variables that contribute to whether someone is likely to own and electric vehicle and comparing those demographics to geographic data such as number of EV Charging Stations, we can therefore propose to public policy makers where might be the next best markets for installing charging stations. 

View the Machine Learning Model [Here](https://github.com/RussellShelley/Energy_Analysis/blob/main/Machine_Learning/ML_Decision_Tree_And_Random_Forest.ipynb)

### *Preliminary Data Preprocessing* 
Our model will require quite a bit in the ETL pipeline. We will need to reformat and load in data from the survey respondendts. This data will be consolidated into an SQL database (later to be housed by AWS for web interactivity) and the variables will be applied to a Machine Learning model to predict if certain demographic variables are a factor in determining EV ownership. The Survey Data Files are first read in a Jupyter Notebook using Pandas Library in Python. Unique values are counted, unecessary columns are dropped, and the csv files are then connected to a PostgreSQL Database. Using SQL, a Machine Learning Input Table is created by running a Full Outer Join on the personal demographic table with the vehicle ownership table. SQL code is then used to add a new column titled "ev_flag" and uses a filter conditional statement to check what type of vehicle the survey respondent owns. If the response is an Electric Vehicle (BEV) or Plug In Hybrid Electric (PHEV), then the ev_flag column outputs a 1 (for yes - respondent owns an electric vehicle). If the vehicle is a non-electric vehicle, the column displays a 0 (respondent does not own an electric vehicle). We also use One Hot Encoder to ensure that all the columns will be numerical when running the model. The data is also scaled and normalized reducing the likelihood that large values will unduly influence the model.

### *Preliminary Feature Engineering, Feature Selection, and Decision-Making Process*
### *Training and Testing Sets*
The dataset is split into training and testing sets. The model uses the training dataset to learn from it. It then uses the testing dataset to assess its performance. If we were to use the entire dataset to train the model, we wouldn't know how well the model will perform when it encounters unseen data. We use the SciKit Learn Library to split, train, and test the data.

### *Model Choice: Limitations and Benefits*
Because we are relating many variables, we will utilize both a Supervised Decision Tree and Random Forest Machine Learning Model. Supervised Machine Learning deals with labeled datasets. This approach is appropriate for this project because we will use current demographic data with knowledge of whether or not a survey respondent owns an electric vehicle to run predictions on future unknown datasets.

The benefit to Decision Tree Algorithms is that they are one of the most interpretable models, as they provide a clear representation of how the model works. Decision trees are natural ways in which you can classify or label objects by asking a series of questions designed to zero in on the true answer. However, decision trees can become very complex and very deep, depending on how many questions have to be answered. Deep and complex trees tend to overfit to the data and do not generalize well.

Instead of having a single, complex tree like the ones created by decision trees, a random forest algorithm will sample the data and build several smaller, simpler decision trees. Each tree is simpler because it is built from a random subset of features. Random forest algorithms are beneficial because they are robust against overfitting as all of those weak learners are trained on different pieces of the data, can be used to rank the importance of input variables in a natural way, can handle thousands of input variables without variable deletion, are robust to outliers and nonlinear data and run efficiently on large datasets.

### *Model Results*
Accuracy, Precision, Sensitivity

## Visualization

We will incorporate visualizations into `Google Slides`, as well as create an interactive webpage. A working draft of webpage can be found [here](https://amylio.github.io/Project_Web_Test/)

![webpage1](https://github.com/RussellShelley/Energy_Analysis/blob/ALio/Visualization/Images/Webpagedraft1.png)

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

## Team Communication Protocols
* `Slack`- #final_project_energy channel
* `Zoom`
	* Week 1 check-in 10am Sunday, April 17th (PST)
	* Week 2 TBD
	* Week 3 check-in 10am Sunday, May 2nd (PST)




<!-- ABOUT THE PROJECT -->
## Machine Learning Overview

In this machine learning analysis, we are looking to explore the relationships of many different demographic variables with electric vehicle ownership. We have compiled census data on demographics (gender, age, family size, race, income) at the census tract and block level across the state of California.This will require quite a bit in the ETL pipeline. We will need to reformat and load in data from the survey respondendts. Because we will be relating many variables, we have decided to utilize both a Supervised Decision Tree and Random Forest Machine Learning Model. Supervised Machine Learning deals with labeled datasets. This ML approach is appropriate for this project because we will use current demographic data with knowledge of whether or not a survey respondent owns an electric vehicle to run predictions on future unknown datasets. 

This Machine Learning model ties into our overall project in that by finding key variables that contribute to whether someone is likely to own and electric vehicle and comparing those demographics to geographic data such as number of EV Charging Stations, we can therefore propose to public policy makers where might be the next best markets for installing charging stations. 

There needs to be a description of the model as well as any preprocessing that was involved. Additionally, capture an interpretation of how accurate, precise, or sensitive the model is.

### Data Collection
We will collect data from various resources to identify the likelihood of owning an electric vehicle in comparison to demographic and geographic location, such as, proximity to charging stations, county of residence, household income, gender, education, employment, driving frequency, and more. In 2019, the California Energy Commission ran a [California Vehicle Survey](https://www.energy.ca.gov/data-reports/surveys/california-vehicle-survey) in partnership with the NREL. The 2019 survey had over 6,000 household and commercial survey respondents, including over 700 PEV owners and 300 FCEV owners. The downloadable dataset can be found [here](https://www.nrel.gov/transportation/secure-transportation-data/tsdc-2019-california-vehicle-survey.html).

### Preprocessing and Machine Learning
This data will be consolidated into an SQL database (later to be housed by AWS for web interactivity) and the variables will be applied to a Machine Learning model to predict if certain demographic variables are a factor in determining EV ownership. The Survey Data Files are first read in a Jupyter Notebook using Pandas Library in Python. Unique values are counted, unecessary columns are dropped, and the csv files are then connected to a PostgreSQL Database. Using SQL, a Machine Learning Input Table is created by running a Full Outer Join on the personal demographic table with the vehicle ownership table. SQL code is then used to add a new column titled "ev_flag" and uses a filter conditional statement to check what type of vehicle the survey respondent owns. If the response is an Electric Vehicle (BEV) or Plug In Hybrid Electric (PHEV), then the ev_flag column outputs a 1 (for yes - respondent owns an electric vehicle). If the vehicle is a non-electric vehicle, the column displays a 0 (respondent does not own an electric vehicle).  

One question: If you had more time, where would you like to investigate for finer tuning? Keep this in mind as the presentation is being put together since it could be a really strong talking point.
How does it work?
Why this specific model?
What is the model's accuracy?
If there are statistics involved, what stats are being included in analysis and why?
If no statistics are involved, what would you include if you had more time?

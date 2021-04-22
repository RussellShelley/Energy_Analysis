# Energy_Analysis


Electric vehicles currently make up only about 2% of all cars sold in the US. Many drivers have put off purchasing electric vehicles until now for many reasons such as expense and concerns over the availability of plug-in recharge points. However, current trends show that these statistics are likely to change. 

## Project Overview

The purpose of this project is to explore an overall analysis of the electric vehicle car market, availability of charging stations, and potential climate implications. We choose this project because of it's immediate relevance as well as potential large scale global and humanitarian impact. 

## Process

**Data Collection**
* We will collect data from various resources to identify the likelihood of owning an electric vehicle in comparison to demographic and geographic location, such as, proximity to charging stations, household income, and more. 

**Preprocessing and Machine Learning**
* This data will be consolidated into a database and the variables will be applied to a Machine Learning model to predict if household income is a factor in determining ownership. 

**Analysis, Presentation, and Visualization**
* The overall analysis will be written into a Google Slide presentation, as well as visualized on a webpage.

## Technology

![techpath](https://github.com/RussellShelley/Energy_Analysis/blob/main/Technology/Technology.jpg)

* Data is collected and preprocessed in `Jupyter Notebook` using `Pandas` and `Python`.
* Preprocessed data is connected and imported into `Postgres` using `pgAdmin`.
* The database is then connected to the Machine Learning model that has been created using `Jupyter Notebook`
* The presentation will be displayed via `Google Slides`, as well as, an interactive webpage hosted by `GitHub Pages` using `HTML`, `CSS` and `Javascript`

## Database

* Placeholder
* Placeholder
* Placeholder

## Machine Learning Model

In this machine learning analysis, we are looking to explore the relationships of many different demographic and environmental variables with electric vehicle ownership and/or electric vehicle charing stations.

We have compiled census data on demographics (gender, age, family size, race, income) at the census tract and block level across the state of California. We have also downloaded a GEOjson of air pollution levels from 1986-2010, and we are creating an API to pull EV charging location points from OpenChargeMap.org.

Our hopes are to explore the likelihood of EV ownership within a given zipcode (or) census tract (or) census block (whichever our data best lends itself to), in order to provide homeowners potential recommendations on EV ownership suitability in their region. We also hope to explore the relationship between EV charging stations and actual EV ownership (is the ratio consistent? Are some communities underserved?), the relationship between air pollution and EV charging stations (is EV adoption occurring in communities with high levels of airborne pollution?), as well as the relationships between familial demographics (ages, household size, etc.) and EV ownership.

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
* `Zoom` - Week 1 check-in 10am Sunday, April 17th (PST)



# Energy_Analysis
## Project Overview
* Selected topic
    * Likelihood of owning an electric vehicle in comparison to demographic and geographic location such as proximity to charging stations, household income, and more. 
* Reason we selected the topic
    * Electric vehicles currently make up only about 2% of all cars sold in the US. Many drivers have put off purchasing electric vehicles until now for many reasons such as expense and concerns over the availability of plug-in recharge points. However, current trends show that these statistics are likely to change. The purpose of this project is to explore an overall analysis of the electric vehicle car market, availability of charging stations, and potential climate implications. We choose this project because of it's immediate relevance as well as potential large scale global and humanitarian impact. 
* Description of the source of data
    * Data will be sourced from the California Energy Commission, the US Census Bureau, and Data.Gov. 
* Questions we hope to answer with the data
    * Can we predict if someone is likely to own an electric vehicle based on demographic and geographic location? 
* Description of the communication protocols
    - slack (final_project_energy channel)
    - zoom check-in 10am Sunday 17th (PST)

## Machine Learning Model
In this machine learning analysis, we are looking to explore the relationships of many different demographic and environmental variables with electric vehicle ownership and/or electric vehicle charing stations.

We have compiled census data on demographics (gender, age, family size, race, income) at the census tract and block level across the state of California. We have also downloaded a geojson of air pollution levels from 1986-2010, and we are creating an API to pull EV charging location points from OpenChargeMap.org.

Our hopes are to explore the likelihood of EV ownership within a given zipcode (or) census tract (or) census block (whichever our data best lends itself to), in order to provide homeowners potential recomendations on EV ownership suitability in their region. We also hope to explore the relationship between EV charging stations and actual EV ownership (is the ratio consistent? Are some communities underserved?), the relationship between air pollution and EV charging stations (is EV adoption occuring in communities with high levels of airborne pollution?), as well as the relationships between familial demographics (ages, household size, etc.) and EV ownership.

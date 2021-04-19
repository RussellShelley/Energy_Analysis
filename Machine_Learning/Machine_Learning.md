
[![LinkedIn][linkedin-shield]][linkedin-url]





<!-- ABOUT THE PROJECT -->
## Machine Learning Overview

In this machine learning analysis, we are looking to explore the relationships of many different demographic and environmental variables with electric vehicle ownership and/or electric vehicle charing stations.

We have compiled census data on demographics (gender, age, family size, race, income) at the census tract and block level across the state of California. We have also downloaded a geojson of air pollution levels from 1986-2010, and we are creating an API to pull EV charging location points from OpenChargeMap.org.

Our hopes are to explore the likelihood of EV ownership within a given zipcode (or) census tract (or) census block (whichever our data best lends itself to), in order to provide homeowners potential recomendations on EV ownership suitability in their region. We also hope to explore the relationship between EV charging stations and actual EV ownership (is the ratio consistent? Are some communities underserved?), the relationship between air pollution and EV charging stations (is EV adoption occuring in communities with high levels of airborne pollution?), as well as the relationships between familial demographics (ages, household size, etc.) and EV ownership.

This will require quite a bit in the ETL pipeline. We will need to reformat and load in data from multiple sources, with each covering slightly different geographic area (census tract/block vs zip code vs county).

Because we will be relating dozens of potential variables, we have decided to utilize a nueral network to explore these relationships.

The jupyter notebook file in this folder explores a test dataset for our first iteration. "Family size" is a placeholder for "EV charing station" or "# of EVs per zip" because we have not yet downloaded and merged these datasets. The accuracy of the current model is very low, as the classification portion of the model has been excluded.
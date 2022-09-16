# A State's Gun Policies Effectiveness on it's Number of Mass Shootings 

## Project Proposal

Our motivation for this project was to define differing levels of a States' gun policies and monitor their affects on the number of mass shootings per State.  We have built this project to see if there are any viable correlations between levels of policy and mass shootings.  This can help solve the problem of gun policy effectiveness on the occurances of mass shootings.  

The analyzed data defines a mass shooting as an gun event where at least two or more persons were either injured or killed

We have concluded that a State's gun policies do not affect the number of mass shootings

We used the following original data sources for this project: [https://www.kaggle.com/datasets/gunviolencearchive/gun-violence-database![image]](https://www.kaggle.com/datasets/gunviolencearchive/gun-violence-database) and [https://en.wikipedia.org/wiki/Gun_laws_in_the_United_States_by_sta ](https://en.wikipedia.org/wiki/Gun_laws_in_the_United_States_by_state)


## Table of Contents

- [Extract](#extract)
- [Transform](#transform)
- [Load](#load)
- [Credits](#credits)
- [Results](#results)





## Extract

The data used from [Kaggle](https://www.kaggle.com/datasets/gunviolencearchive/gun-violence-database) are all CSV files, while the data used from Wikipedia is a scraped website

We selected the Kaggle dataset because it was the only data we found that categorized by type of shooting that we could manipulate into a mass shooting variable

A secondary dataset was utilized from [Wikipedia](https://en.wikipedia.org/wiki/Gun_laws_in_the_United_States_by_state) to determine what laws each state enacted to comprise their gun policies. A [Jupyter Notebook](/cleaning_notebooks/web_scrape_gun.ipynb) was implemented to scrape wikipedia sites for the 50 states to determine their gun policies.


The Wikipedia dataset because it had all the States gun policy information within a single web domain. The alternative was to scrape each individual states' government site to obtain this information, which would have exceeded our time limit.



## Transform

With the Wikipedia data, we scraped the website to set parameters for how we were going to relate the differing levels of a State's gun policy.  A `CASE`  statement was used to rank gun policy stringency; above 70% was defined as "Restrictive," less than 70% but greater than 40% was defined as "Average," and finally anything less than 40% was deined as "Relaxed."  The total number of gun policies within each state was divided by the number of active gun policies a State had implemented to obtain these percentages. A state that has 9 policies implemented out of 10 policies would receive a 90% with this formula.


To transform the public data and use it in our analysis, we executed the following:
- Leveraged Pandas functions in Jupyter Notebook to load all several CSV files
- Inspected the files and converted them into data frames
- Removed the operator’s column, city, county column, and address column due to omitting information, and the data was not pertinent to the focus of this analysis
- Created different data frames and queries to validate our hypothesis by grouping the data by state and getting the sum of the number of people killed and injured. In addition, we also grouped the data based on the number of gun policies. We sorted the data in descending order to see which state had the highest numbers and compared whether gun policies impacted mass shootings

We transformed our datasets with the above information to be able to get the most succinct results possible.
Some challenges with transformation included misnamed columns, columns with differing cases, i.e (Hand Gun, Hand gun, Handgun, handgun)- making it difficult to properly merge all datasets. It was determined to perform most count and sum within each states' webscrape code, since these columns were not going to be displayed in the finished dataset.
                                      
                       
## Load

The final database we used to best compare a State's mass shootings and gun policies is a relational database stored in tables through PGAdmin <br>
![Data DDL Load](/resources/Load.PNG?raw=true "DDL for Load")

We chose a relational database because our datasets had a common field of state lending the datasets to be related while refering to mass shootings and gun policies




## Results

The question to answer was: Are the number of mass shootings an indicator for too lax of gun policies within the state? 
The states with the highest number of mass shooting occurrances can be seen below: <br>
![Total Mass_Shooting](/resources/Total_Mass_Shooting.png?raw=true "Total Mass Shootings by State, Top 10")<br>
We can see Illinois and California are in the lead, but as far as policies, we can see no real correlation between the number of mass shootings and the stringency of a state gun policy, see below:<br>
![Shootings Vs_Policy](/resources/Shootings_V_Policy.png?raw=true "Mass Shooting Count vs Policy Strictness")<br><br>
## Credits

The collaborators on this project are: Jessica Ermovick https://github.com/Jermov,
                                       Paul Serna https://github.com/pauls21033, and
                                       Andrew Fisher https://github.com/dfish9twenty
                                       
                                       





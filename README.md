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





## Extract

The data used from [Kaggle](https://www.kaggle.com/datasets/gunviolencearchive/gun-violence-database) are all CSV files, while the data used from Wikipedia is a scraped website

A secondary dataset was utilized from [Wikipedia](https://en.wikipedia.org/wiki/Gun_laws_in_the_United_States_by_state) to determine what laws each state enacted to comprise their gun policies.



## Transform

With the Wikipedia data we scraped the website to set parameters for how we were going to relate the differing levels of a State's gun policy.  We took the total number of gun policies available and divided them by the number of active gun policies a State had implemented during mass shooting event.  Based on these aparemters we defined each State as having Restrictive, Average or Relaxed gun policies


To transform the public data and use it in our analysis, we executed the following:
- Leveraged Pandas functions in Jupyter Notebook to load all several CSV files
- Inspected the files and converted them into data frames
- Removed the operator’s column, city, county column, and address column due to omitting information, and the data was not pertinent to the focus of this analysis
- Created different data frames and queries to validate our hypothesis by grouping the data by state and getting the sum of the number of people killed and injured. In addition, we also grouped the data based on the number of gun policies. We sorted the data in descending order to see which state had the highest numbers and compared whether gun policies impacted mass shootings


                                      
                       
## Load

The final database we used to best compare a State's mass shootings and gun policies is a relational database stored in tables through PGAdmin






## Credits

The collaborators on this project are: Jessica Ermovick https://github.com/Jermov,
                                       Paul Serna https://github.com/pauls21033, and
                                       Andrew Fisher https://github.com/dfish9twenty
                                       
                                       





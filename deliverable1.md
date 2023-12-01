# What is the project use case?

NJ Transit is seeking to increase service quality of the train system by utilizing the train delay data. 
The minimum viable product desired from this data is a easily digestible visualization of which routes will be delayed 20 minutes beforehand or earlier.

With a relatively reliable model for the different stations in the NJ Transit system, the company would also like to see the delays easily communicated to transit users in existing platforms like the NJ Transit app.

# How could data make a difference in answering this question? Do you have a sense for the business as usual decision making?

The understanding of origin and destination points are key to categorizing delays as a simple inconvenience versus having better alternatives by using other routes or modes.
The recommended data offers many records' delay in seconds, but the location or options of lines and stations are not clear from it alone.

We are currently unsure of business-as-usual decision making beyond simple communication of delays and new ETAs.

# What datasets have you identified to help you answer this question?

In addition to the NJ Transit dataset (Kaggle), we have identified a NJ Transit train station point data file that includes
most of the names from the Kaggle dataset. 27 stations from the May 2020 records are not in the NJ Transit system (likely Amtrak stations) and likely won't be included in spatial analysis.


# What kind of model would you build and what is the dependent variable? How will you validate this model (cross-validation & goodness of fit metrics that relate to the business process)?

Considering the small threshold of a 'delay', we intend to begin building a linear model with spatial and temporal features where applicable.
The dependent variable will be the amount of time a specific train will be delayed by and validated by mean absolute error (MAE) on a given two-week period.

If it is considered more applicable by 12/5, a logistic regression model for whether a train will be delayed by a headway or some standard amount of time like 10/20 minutes instead.
(Though this is secondary)


# How do you think that stakeholders would want to consume this data?

As mentioned earlier, we assume stakeholders that also use the transit will want the delays displayed in existing NJ Transit applications and only as relevant to them.
Further deliberation on which visualizations will be used will come along with the wireframe of the ap (addition).


# What are the use cases for your app and what should the app do?

*	There are foreseen delays or emergencies that impacts other trains.
	-	Make it clear wheter a delay is predicted or confirmed.
*	A delay is forecasted to be so long that an alternate train would be better (and new tickets are not an issue to obtain)
	-	Use different color scheme and symbols (yellow : warning, red (or dark-brown) : other route or mode, dark-red : complete stop)
*	Delay is predicted how far in advance?
	-	Predictions conducted weekly (current expectation)
	-	Delays up to two weeks out displayed in app
	-	More accurate/smaller-timeframe predictions might be displayed with higher priority & on-demand in app (single record prediction)


# What are some results of your exploratory analysis and any introductory modeling?

No introductory modeling yet, but the exploratory analysis shows that delays make up the vast majority of train trips.

We still need to gauge the severity of these delays and find some way to capture delays of Amtrak trains.
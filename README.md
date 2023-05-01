# Customer-Satisfaction-at-the-Airport

# Serving as the Project Manager for this analysis in R and Excel, my team and I gained insights to further understand what factors cause a customer to be satisfied, and built models to determine how customer satisfaction can be improved.
# Using a public dataset with 25,977 records with 24 distinct variables, we pre-processed the data by creating dummy variables for our qualitative variables. To prepare the data for analysis, we partitioned the data into a train set and test set and began to run models.

# Using Excel, we created a Summary Statistics Table for all variables in the dataset. From this, we discovered the following insights:
## 1. The average age of travelers in the dataset is approx. 40 years old with the youngest traveler at 7 years old and the oldest traveler at 85.
## 2. About 82% of travelers are loyal customers and 48% fly business class.
## 3. Inflight service is rated the highest on average while wifi service is rated the lowest on average. Inflight service is a strong point for the 
## airline while wifi service could definitely improve.
## 4. There is an average flight departure and arrival delay of 14-15 minutes. With a maximum of over 1000 minutes delay for both departure and 
## arrival, it can be concluded that there is a very small number of delays within the airline.
## 5. About 43.9% of travelers are currently satisfied with their travel experience.

# Using R, we created a linear regression model to examine the relationship between specific variables in the data set. The model was based on Wifi Service, Seat Comfort, Food and Drink, Inflight Entertainment, Leg Room, Inflight Service, and Cleanliness for Independent Variables and Satisfaction for the Dependent Variable. The following insight was found:
## Seat Comfort, Leg Room, and Wifi Service have the largest impact on the satisfaction of a traveler with the greatest coefficients amongst the independent variables in the model.

# Using Excel, we created a histogram to visualize the distribution of both departure delay and arrival delay. We determined that the airline is usually on time or rarely over an hour late. There are very few flights with delays of over 2 hours. Therefore, this could not be a large factor in the dissatisfaction customers experienced. 

# Next, in R, we created a classification tree that identified customers who rated the Inflight Entertainment <4 and Wifi Service <5 were unsatisfied, while those who rated the Wifi Service >=5 were satisfied. Customers who rated the Inflight Entertainment <4 and Legroom <4 with Wifi Service <4 were equally as unsatisfied, but if Wifi service was >4 they seemed to be satisfied. Therefore, wifi service is identified as a large factor in customer satisfaction.

# Lastly, in R, we created a confusion matrix for a random forest. With the dependent variable being satisfied and the independent variable being Seat Comfort, Leg Room, and Wifi Service (as they were shown to have the largest impact on satisfaction in the linear regression model). The accuracy of the prediction is about 79% depicting that 79% of the predictions made were correct. The P value from the confusion matrix displayed to be less than 0.05, explaining that the independent variables selected were strongly correlated with the dependent variable of customers being satisfied.

# At the end of our analysis, we concluded that the factors that greatly impact the satisfaction of customers within their airport experience were Seat Comfort, Leg Room, and Wifi Service, with Wifi Service having the greatest impact. Therefore, to improve the overall experience of customers, we recommended that the airport improve its wifi service, seat comfort, and leg room as much as possible. 

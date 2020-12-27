## Week2 Topics:
* Polynomial regression
* Closed-form solution of multiple linear regression
* Gradient descent algorithm: an alternation way to solve minimization
  - convergence: choose step size


## Algorithms: 
* multiple linear regression


## Implementation Details of Programming Assignment 1:

Goal: Use data on house sales in King County to predict prices using multiple regression. 

* First to do some feature engineering
* Use built-in scikit-learn functions to compute the regression weights (coefficients/parameters)
* Given the regression weights, predictors and outcome write a function to compute the Residual Sum of Squares
* Look at coefficients and interpret their meanings
* Evaluate multiple models via RSS

## Implementation Details of Programming Assignment 2:

Goal: Estimating multiple regression weights via gradient descent.

* Add a constant column of 1's to account for the intercept
* Convert a dataframe into a Numpy array
* Write a predict_output() function using Numpy
* Write a numpy function to compute the derivative of the regression weights with respect to a single feature
* Write gradient descent function to compute the regression weights given an initial weight vector, step size and tolerance.
* Use the gradient descent function to estimate regression weights for multiple features

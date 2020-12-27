## Week4 Topics:

* Overfiiting problem and its symptons
* Control overfiting:
  - modified cost function
  - how penalty level reflecting bias-variance tradeoff
* Solve ridge regression
  - closed-form solution
  - gradient descent with L2 regularization
    - do not penalize on intercept
    - scale data first
* Select optimal penalty:
  - held-out method
  - cross-validation


## Algorithms: 
* Gradient descent
* k-fold Cross-validation from scratch
* Optimize parameters using GridSearchCV


## Implementation Details of Programming Assignment 1:

Goal: Explore the effect of L2 regularization on polynomial regression

* Polynomial regression with a small penalty:
    * Use the pre-built implementation of regression  to run polynomial regression
    * Use matplotlib to visualize polynomial regressions on four datasets
    * Observe overfitting: Use matplotlib to visualize polynomial regressions with L2_small_penalty
* Polynomial regression with an appropriate penalty:
    * Control overfitting: Use matplotlib to visualize polynomial regressions with L2_large_penalty
    * Choose best L2 penalty by building hands-on cross-validation function
    * Another option to choose best L2 penalty: using sklearn.ridgeCV
    * Assess the final fit using test data.

## Implementation Details of Programming Assignment 2:

Goal: Implement ridge regression from scratch.

* Write a function to convert dataframe to numpy array
* Write a Numpy function to compute the derivative of the regression weights with respect to a single feature
* Write functions to compute prediction, derivative
* Implement ridge regression learning algorithm using gradient descent from scratch, compare the effects of penalty level on coefficients

## Week5 Topics:

* Motivation for feature selection
* Feature selection approaches
  - subset selection
    - best subset selection: search over 2^p models
    - forward selection: search over 1+p(p+1)/2 models
    - backward selection: search over 1+p(p+1)/2 models
    - model selection criterion
  - shrikage method: Lasso
  - dimension reduction
* Lasso
  - cost function for lasso
  - geometric representation: why L1 regularization helps select feature
  - solving lasso
    - no closed-form solution
    - coordinate descent algorithm
* Coordinate descent
  - intercept is not penalized
  - scale data first
  - visualize coefficient path in least square, ridge, lasso(soft-thresholding)
* Compare ridge and lasso
  - lasso performs better when only a few coefficients are substantially large
  - ridge performs better when response is a function of many predictors and each has roughly equal size
* Predict using learned weights
  - scale test data using the same norms in training data
  - scale weights learned in training data
  


## Algorithms: 
* Solve Lasso using coordinate descent


## Implementation Details of Programming Assignment 1:

Goal: Use LASSO to select features, building on a pre-implemented solver for LASSO
* Run LASSO with different L1 penalties.
* Choose best L1 penalty using a validation set.
* Choose best L1 penalty using a validation set, with additional constraint on the size of subset.

## Implementation Details of Programming Assignment 2:

Goal: Implement Lasso from scratch using coordinate descent algorithm
* Write a function to normalize features
* Implement coordinate descent for LASSO
* Explore effects of L1 penalty

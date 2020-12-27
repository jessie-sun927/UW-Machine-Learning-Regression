# UW-Machine-Learning-Regression
This is the second course in ML specialization and it focus on regression algroithms.

### [Week1](https://github.com/jessie-sun927/UW-Machine-Learning-Regression/tree/main/week1):
* simple linear regression
* regression assumptions
* close-form solution of regression
  
  
### [Week2](https://github.com/jessie-sun927/UW-Machine-Learning-Regression/tree/main/week2):
* Polynomial regression
* Closed-form solution of multiple linear regression
* Gradient descent algorithm: an alternation way to solve minimization
  - convergence: choose step size, maximum iteration


### [Week3](https://github.com/jessie-sun927/UW-Machine-Learning-Regression/tree/main/week3):
* Assess performance
  - training MSE
  - generalization MSE/prediction MSE: true obejctive
  - test MSE
* Bias and Variance trade-off
  - Decomposition of expected prediction MSE
* Overfitting
* Model Evaluation Techniques
  - holdout method: for sufficient data
  - Cross-validation method: less data required
  
  
### [Week4](https://github.com/jessie-sun927/UW-Machine-Learning-Regression/tree/main/week4):
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
    
    
### [Week5](https://github.com/jessie-sun927/UW-Machine-Learning-Regression/tree/main/week5):
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
  

### [Week6](https://github.com/jessie-sun927/UW-Machine-Learning-Regression/tree/main/week6):
* KNN
  - i.e. uniform kernel regression estimator, running mean estimator 
  - Using a uniform kernel function, just average esponse within the bandwidth
  - distance metric: Euclidean-distance, scale data first(use the same norm for training, validation, test set)
  - choosing k: using validation set or cross-validation
  
* Weighted KNN
  - giving weights to KNN, get weighted average as prediction
  - weighting schemes
    * inverse of distance
    * kernel weights
      * Epanechnikov kernel, Gaussian Kernel
      * Kernels have parameters λ which specifies how quickly it goes to zero
      * Gaussian kernel never goes to zero
    
* Kernel regression estimator
  - i.e. Nadaraya-Watson estimator, local constant estimator
  - Instead of k neighbors, if we consider all observations it becomes kernel regression
  - Kernel can be bounded (uniform/triangular kernel), in such case we consider subset of neighbors but it is still not KNN
  - choose kernel function
  - choose bandwidth: bias-variance tradeoff
    * controlled by parameters λ, which is tunned by cross-validation
    * large bandwidth: low variance, high bias
    * small bandwidth: high variance, low bias (overfit)
    
* Local linear regression estimator
  - i.e. locally weighted linear regression estimator
  - The above three method are all about taking weighted average for prediction
  - if we fit a model near the prediction point(target point) where error is weighted by kernel, then it is local linear regression
  - we can either fit with a linear model or nonlinear model
  - local linear fit reduces bias at boundaries(recommended)
  - local quadratic fit doesn't help at boundaries, but help capture curvature in the interior


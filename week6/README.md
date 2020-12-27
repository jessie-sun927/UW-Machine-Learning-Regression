## Week6 Topics:
* KNN
  - i.e uniform kernel regression estimator, running mean estimator 
  - Using a uniform kernel function, just average esponse within the bandwidth
  - distance metric: Euclidean-distance, scale data first(use the same norm for training, validation, test set)
  - choosing k: using validation set or cross-validation
  
* Weighted KNN
  - giving weights to KNN, get weighted average as prediction
  - weighting scheme
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

## Algorithms: 
* KNN, weighted KNN, kernel regression, local linear regression


## Implementation Details of Programming Assignment:

Goal: Use data on house sales in King County to predict prices using multiple regression. 

* Find the k-nearest neighbors of a given query input
* Predict the output for the query input using the k-nearest neighbors
* Choose the best value of k using a validation set

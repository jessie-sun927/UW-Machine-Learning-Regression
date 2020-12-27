setwd("C:/Users/Lenovo/Desktop/week6_assignment")
train=read.csv("kc_house_data_small_train.csv")
valid=read.csv("kc_house_data_validation.csv")
test=read.csv("kc_house_data_small_test.csv")


normalize <- function(x) {
  return ( x  / sqrt(sum(x^2)))
}

norm <- function(x) {
  return (sqrt(sum(x^2)))
}

train$cons<-rep(1,5527)
valid$cons<-rep(1,1435)
test$cons<- rep(1,1741)

train_norm<-apply(train[,c(22,4:16,18:21)], 2, function(x) normalize(x))
norms<- apply(train[,c(22,4:16,18:21)], 2, function(x) norm(x))
test_norm<- mapply(`/`, data.frame(test[,c(22,4:16,18:21)]), norms)
valid_norm<-mapply(`/`, data.frame(valid[,c(22,4:16,18:21)]), norms)

Euclidean_dis <- function(x,y) {
  return (sqrt(t(x-y) %*% (x-y)))
}


#######Quiz Q8,10
distance<-c()
for (i in 1:10){
 distance[i]<- Euclidean_dis(as.vector(test_norm[1,]), as.vector(train_norm[i,]))
}

closest_index<- which.min(distance)

#######Quiz Q16,17 Make prediction for 3rd house in train set using 1 Nearest Neighbor
distance<-c()
for (i in 1:5527){
  distance[i]<- Euclidean_dis(as.vector(test_norm[3,]), as.vector(train_norm[i,]))
}

closest_index<- which.min(distance)
predicted_y<-train[closest_index,3]

#######Quiz Q19,21 Make prediction for 3rd house in train set using 4 Nearest Neighbor
distance<-c()
for (i in 1:5527){
  distance[i]<- Euclidean_dis(as.vector(test_norm[3,]), as.vector(train_norm[i,]))
}
index<-sapply(1:4, function(x) which(distance == sort(distance)[x]))
predicted_y <- sum(train$price[index])/length(index)


#######Quiz Q23 Make prediction for first ten house in train set using 10 Nearest Neighbor Method
distance<-data.frame()
index<-list()
predicted_y<-c()

for (i in 1:10){
  for(j in 1:5527){
    distance[j,i] <- Euclidean_dis(as.vector(test_norm[i,]), as.vector(train_norm[j,]))}
    index[[i]]<-sapply(1:10, function(x) which(distance[,i] == sort(distance[,i])[x]))
    predicted_y[i] <- sum(train$price[index[[i]]])/length(index[[i]])
}

lowest_prediction_index<- which.min(predicted_y)
print(predicted_y[lowest_prediction_index])

#######Quiz Q25 Find optimal K
distance<-data.frame()
index<-list()
predicted_y<-c()
actual_y<-c()
RSS<-c()

for (k in 1:15){
  for (i in 1:1435){
   for(j in 1:5527){
    distance[j,i] <- Euclidean_dis(as.vector(valid_norm[i,]), as.vector(train_norm[j,]))}
    index[[i]]<-sapply(1:k, function(x) which(distance[,i] == sort(distance[,i])[k]))
    predicted_y[i] <- sum(train$price[index[[i]]])/length(index[[i]])
    actual_y[i]<-valid$price[i]
}
    RSS[k] <- t(predicted_y-actual_y) %*% (predicted_y-actual_y)}    

k_optimal<-which.min(RSS)









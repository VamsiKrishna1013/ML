#Loading Training and Test Data for Basic Features (Features from 51 to 60)
#Training Data

 A <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_train.csv', header = FALSE)

#Test Data
 ATest1 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.02.01.00_00.csv', header = FALSE)
 ATest2 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.02.28.00_00.csv', header = FALSE)
 ATest3 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.03.01.00_00.csv', header = FALSE)
 ATest4 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.03.31.01_00.csv', header = FALSE)
 
 # Basic Features selected for training data (columns 51 to 60)
#Training Data
 ATrain<-A[,c(51:60,281)]

#Test Data
 ATest1F<-ATest1[,c(51:60,281)]
 ATest2F<-ATest2[,c(51:60,281)]
 ATest3M<-ATest3[,c(51:60,281)]
 ATest4M<-ATest4[,c(51:60,281)]



#Linear Regression model 
 fit <- lm(formula = V281~.,data=ATrain)
 summary(fit)
 
 #Prediction_Train
 pred <- predict(fit,ATrain, se.fit = FALSE)
 pred
 
 #Prediction_Test

pred1 <- predict(fit,ATest1F, se.fit = FALSE)
pred1
pred2 <- predict(fit,ATest2F, se.fit = FALSE)
pred2
pred3 <- predict(fit,ATest3M, se.fit = FALSE)
pred3
pred4 <- predict(fit,ATest4M, se.fit = FALSE)
pred4



# Calculate the mean of the squared errors (MSE) using mse(actual, predicted) function
MSE.training = mean((ATrain$V281-pred)^2)
MSE.training
MSE.test1 = mean((ATest1F$V281-pred1)^2)
MSE.test1
MSE.test2 = mean((ATest2F$V281-pred2)^2)
MSE.test2
MSE.test3 = mean((ATest3M$V281-pred3)^2)
MSE.test3
MSE.test4 = mean((ATest4M$V281-pred4)^2)
MSE.test4

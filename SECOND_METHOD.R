B <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_train.csv', header = FALSE)

#Test Data
BTest1 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.02.01.00_00.csv', header = FALSE)
BTest2 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.02.28.00_00.csv', header = FALSE)
BTest3 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.03.01.00_00.csv', header = FALSE)
BTest4 <- read.csv('C:/Users/Vamsi/Downloads/BlogFeedback/blogData_test-2012.03.31.01_00.csv', header = FALSE)

# Basic Features selected for training data (columns 63 to 262)
#Training Data
BTrain<- B[,c(63:262,281)]

#Test Data
BTest1F<-BTest1[,c(63:262,281)]
BTest2F<-BTest2[,c(63:262,281)]
BTest3M<-BTest3[,c(63:262,281)]
BTest4M<-BTest4[,c(63:262,281)]
j=


#Linear Regression model 
fit<- lm(formula = V281~.,data=BTrain)
summary(fit)

#Prediction

pred1 <- predict(fit,BTest1F, se.fit = FALSE)
pred1
pred2 <- predict(fit,BTest2F, se.fit = FALSE)
pred2
pred3 <- predict(fit,BTest3M, se.fit = FALSE)
pred3
pred4 <- predict(fit,BTest4M, se.fit = FALSE)
pred4

# Calculate the mean of the squared errors (MSE) using mse(actual, predicted) function
MSE.trainingB = mean((BTrain$V281-pred)^2)
MSE.trainingB
MSE.test1B = mean((BTest1F$V281-pred1)^2)
MSE.test1B
MSE.test2B = mean((BTest2F$V281-pred2)^2)
MSE.test2B
MSE.test3B = mean((BTest3M$V281-pred3)^2)
MSE.test3B
MSE.test4B = mean((BTest4M$V281-pred4)^2)
MSE.test4B


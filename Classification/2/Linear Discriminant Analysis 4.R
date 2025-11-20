#drop rows with NA values
biopsy = na.omit(biopsy)
 #drop the ID column
biopsy = subset(biopsy, select = -c(ID))

train<-1:400
test.Y<-biopsy[-train,10]
test.X<-biopsy[-train,1:9]
lda.fit<-lda(class~.,subset=train,data=biopsy)
lda.pred<-predict(lda.fit, test.X)
lda.class <- lda.pred$class
lda.table<- table(lda.class, test.Y)
lda.acc <- mean(lda.class == test.Y)
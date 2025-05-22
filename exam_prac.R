x<-5+5/5

print(x)
rm(x)
fac<-c("hello","hii","hello","hi","hii")
fact<-c("hello","hii","hello","hi","hii")
fact=factor(fac)
summary(fac)

movie<-c("Very short","short","medium","short","medium","long","very long")
mvlen <- factor(movie,
                ordered = TRUE,
                levels = c("Very short","short","medium","long","very long"))
mvlen


  fac%in%fact
  
  repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
  
  repeat_indepent
  
  
  
  
  # Create a matrix
  A <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
  B <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
  print(A)
  print(B)
  # Print the matrix
  c<-A%*%B
  print(c)
   
  
  
    rate<-c(1,2,3,4,5,6)
    rate_1(rate)<-c("hello","hii","he","ll","l","k")
    
  
  
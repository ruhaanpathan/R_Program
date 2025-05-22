count=0
num=1
repeat{
  if(num==3){
    num=1
   count+1
  }else if(count%%2!=0){
    print(count)
    num=num+1
  }
  if(count==50){
    break
  }
  count=count+1
}
fruits=c("apple","mango","banana")
for (i in fruits){
  print(i)
}
seq(1,50,2)
i=0
while(i<10){
  print(i)
  i=i+1
}
letters[5]
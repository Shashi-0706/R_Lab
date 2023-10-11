name<-list()
price<-list()
quantity<-list()
n<-as.integer(readline("Enter items:"))
for(x in 1:n){
  iname<-readline("Enter name:")
  iprice<-readline("Enter price:")
  iquantity<-readline("Enter quantity:")
  name[[length(name)+1]]<-iname
  price[[length(price)+1]]<-iprice
  quantity[[length(quantity)+1]]<-iquantity
}

tax <- list(2,3,5)
products <- list("Name"=name,"Price"=price,"Quantity"=quantity)
f_price <- list()
total_price <- 0
for(i in 1:length(name)){
  y<-as.integer(price[i])
  z<-as.integer(quantity[i])
  t<-as.integer(tax[i])
  x<- ((y*z)*(t/100))+(y*z)
  total_price<-total_price+x
}
print("------------Reciept--------")
print(paste(name,price,quantity))
print(total_price)
print("----------------------------")

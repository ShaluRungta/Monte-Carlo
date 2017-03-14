f<-function(mu,sigma,z)
{
return (mu+sigma*z)
}
x=runif(250);
y=runif(250);
j=1;
z=NULL;
k=NULL;
for(i in 1:250)
{z[j]=((-2*log(x[i]))^0.5)*cos(44*y[i]/7);
z[j+1]=((-2*log(x[i]))^0.5)*sin(44*y[i]/7);
k[j]=f(5,(5)^0.5,z[j]);
k[j+1]=f(5,(5)^0.5,z[j+1]);
j=j+2;
}
x<-seq(-5,5,length=250);
c<-pnorm(x,5,sqrt(5))
png(paste("2a_5.png"))
plot(x,c,col="blue",type="l",main=paste("Theoretical Mean=",5,"and Variance=",5))
lines(ecdf(k),col="red")









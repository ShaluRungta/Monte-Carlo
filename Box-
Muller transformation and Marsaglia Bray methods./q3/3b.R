f<-function()
{
x=runif(250);
y=runif(250);
j=1;
z=NULL;
for(i in 1:250)
{z[j]=((-2*log(x[i]))^0.5)*cos(44*y[i]/7);
z[j+1]=((-2*log(x[i]))^0.5)*sin(44*y[i]/7);
j=j+2;
}

m=mean(z);
v=var(z);

cat("Mean=",m,"\n");
cat("variance=",v,"\n");

hist(z,main="X ~std. Normal(0,1)", xlab="X", ylab="Frequency",xlim=c(-3,3), ylim=c(0,15),breaks=100, col="blue")
}
t1<-system.time(f(), gcFirst = TRUE);
print(t1);


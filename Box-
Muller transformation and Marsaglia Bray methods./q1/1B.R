x=runif(5000);
y=runif(5000);
j=1;
z=NULL;
for(i in 1:5000)
{z[j]=((-2*log(x[i]))^0.5)*cos(44*y[i]/7);
z[j+1]=((-2*log(x[i]))^0.5)*sin(44*y[i]/7);
j=j+2;
}
print(z);
m=mean(z);
v=var(z);

cat("Mean=",m,"\n");
cat("variance=",v,"\n");

hist(z,main="X ~std. Normal(0,1)", xlab="X", ylab="Frequency",xlim=c(-3,3), ylim=c(0,500),breaks=100, col="blue")


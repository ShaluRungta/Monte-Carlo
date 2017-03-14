f<-function(x)
{
        return (sqrt(((-2)*log(x))/x));
}
g<-function(mu,sigma,z)
{
return (mu+sigma*z)
}
n<-500
u1<-runif(n)
u2<-runif(n)
y<-vector('numeric')
z<-vector('numeric')
v1<-vector('numeric')
v2<-vector('numeric')
k<-vector('numeric')

j<-0
for(i in 1:n)
{
        u1[i]<-(2*u1[i])-1
        u2[i]<-(2*u2[i])-1
        x<-(u1[i]^2)+(u2[i]^2)
        if(x>1)
        {
                next
        }
        j<-j+1
        v<-f(x)
        y<-c(y,v)
        v1<-c(v1,u1[i])
        v2<-c(v2,u2[i])
}
for(i in 1:j)
{
        z1<-v1[i]*y[i];
        z2<-v2[i]*y[i];
        z<-c(z,z1)
        z<-c(z,z2)
}
for(i in 1:j)
{	s<-g(5,sqrt(5),z[i])
	k<-c(k,s)
}	
x<-seq(-5,5,length=500);
c<-pnorm(x,5,sqrt(5))
png(paste("2b_5.png"))
plot(x,c,col="blue",type="l",main=paste("Theoretical Mean=",5,"and Variance=",5))
lines(ecdf(k),col="red")





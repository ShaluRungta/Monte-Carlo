g<-function()
{
f<-function(x)
{
        return (sqrt(((-2)*log(x))/x));
}
n<-500
u1<-runif(n)
u2<-runif(n)
y<-vector('numeric')
z<-vector('numeric')
v1<-vector('numeric')
v2<-vector('numeric')
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
        z1<-v1[i]*y[i]
        z2<-v2[i]*y[i];
        z<-c(z,z1)
        z<-c(z,z2)
}
m<-mean(z)
v<-var(z)
cat("Mean=",m,"\n")
cat("Variance=",v,"\n")
hist(z,col=c("blue"),breaks=70,xlim=c(-3,3),xlab="random numbers using Marsaglia & Bray Method",main=paste("Random numbers for n=500"))
}
t1<-system.time(g(), gcFirst = TRUE);
print(t1);

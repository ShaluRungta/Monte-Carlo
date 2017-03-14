x=NULL;
y=NULL;
png("3.png");
for ( i in 1:10)
{
	n=rnorm(5000);
	a=5/5000;
	b=seq(from=0,to=5,by=0.001);
	w=NULL;
	w[1]=0;
	for( k in 1:5000)
	{
		
		rho=(0.012 + 0.0138*b[k]+0.00125*b[k]*b[k]);
		mu=(0.0325-0.05*b[k]);
		w[k+1]=w[k]+mu*(a)+rho*sqrt(a)*n[k];
	}
	plot(b,w,col=i+3, blim=c(-0.7,0.1),type='l', main="Brownian Paths");
	par(new=TRUE);
	x[i]=w[2000];
	y[i]=w[5000];
}
print( cat("E[W[2]] = ",mean(x)));
print( cat("E[W[5]] = ",mean(y)));



p=[0:0.1:1];
sigma = zeros(length(p),1);
for i = 1:length(p)
    p1=p(i);
    so=.9;
    io=.1;
    yo=[(1-p1)*so;io;p1*so];
    tspan=[0 100];

    ro=1.5;
    sigmasize= @(t,y) [-ro*y(1)*y(2); ro*y(2)*y(1)-y(2); y(2)];
    [t,y] = ode45(sigmasize,tspan,yo);
    r = y(end);
    sigma(i) = r-p1*so;
    
end
scatter(sigma,p)
title('Graph of \sigma vs. p')
    xlabel('immunity fraction, p'), ylabel('epidemic size, \sigma')
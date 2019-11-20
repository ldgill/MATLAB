yo=[.9;.1;0];
tspan=[0 100];

hold on

ro=0.5;
sigmasizeb= @(t,y) [-ro*y(1)*y(2); ro*y(2)*y(1)-y(2); y(2)];
[t,y] = ode45(sigmasizeb,tspan,yo);

plot(t,y);
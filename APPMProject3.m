%% Q8 Part a
yo=[.9;.1;0];
tspan=[0 100];

hold on

ro=1.5;
sigmasize= @(t,y) [-ro*y(1)*y(2); ro*y(2)*y(1)-y(2); y(2)];
[t,y] = ode45(sigmasize,tspan,yo);

plot(t,y);
hold off
%% Q8 PartB
yo=[.9;.1;0];
tspan=[0 100];

hold on

ro=0.5;
sigmasizeb= @(t,y) [-ro*y(1)*y(2); ro*y(2)*y(1)-y(2); y(2)];
[t,y] = ode45(sigmasizeb,tspan,yo);

plot(t,y);
hold off
%% Question 9
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
    
%% Question 10
ro = 1.5;
p = 0;
while p < 1
    f = @(t,y) [-1 *ro * y(1) * y(2); (ro * y(1) * y(2)) - y(2); y(2)]
    [t,ya] = ode45(f,[0 40],[(1-p)*.9 .1 p*.9]);
    plot(t,ya(:,2))
    title('Graph of i(t) infected vs. t time for duration analysis')
    xlabel('time (t)'), ylabel('infected [i(t)]')
    hold on
    p = p + 0.1; %increments p for the next itteration
end
%% Question 11
ro = 1.5;
p = 0.21;
while 0.2 < p < 0.32
    f = @(t,y) [-1 *ro * y(1) * y(2); (ro * y(1) * y(2)) - y(2); y(2)]
    [t,ya] = ode45(f,[0 40],[(1-p)*.9 .1 p*.9]);
    plot(t,ya(:,2))
    title('Graph of i(t) vs. t for duration analysis')
    xlabel('t'), ylabel('i(t)')
    hold on
    p = p + 0.02; %increments p for the next itteration
end
legend({'1','2','3','4','5','6','7'})
ro = 1.5;
p = 0;
while p < 1
    f = @(t,y) [-1 *ro * y(1) * y(2); (ro * y(1) * y(2)) - y(2); y(2)]
    [t,ya] = ode45(f,[0 40],[(1-p)*.9 .1 p*.9]);
    plot(t,ya(:,2))
    title('Graph of i(t) vs. t for duration analysis')
    xlabel('t'), ylabel('i(t)')
    hold on
    p = p + 0.1; %increments p for the next itteration
end
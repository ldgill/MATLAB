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
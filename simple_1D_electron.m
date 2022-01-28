set(0,'DefaultFigureWindowStyle','docked')
set(0,'defaultaxesfontsize',20)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

m = 9.1093837015E-31;
F = 3E-15;

v = [0];
x = 0;
t = 0;

a = F/m;

dt = 1;

dv = a*dt;

dx = dv*dt;

subplot(2,1,1);
plot(t,v(1),'mo');
hold on
subplot(2,1,2);
plot(t,x,'bo');
hold on

tstop = 500;
    
for i = 1:tstop
    t = t + dt;
    v(i+1) = v(i) + dv;
    x = x + dx;
    
    if rand(1,1) < 0.05
        v(i+1) = 0;
    end
    
    vmean = mean(v);

    subplot(2,1,1);
    plot(t,v(i+1),'mo');
    legend ('Velocity');
    plot(t,vmean,'co','DisplayName','Mean Velocity')
    xlabel 'Time';
    hold on
    subplot(2,1,2);
    plot(t,x,'bo');
    xlabel 'Time';
    ylabel 'Position';
    hold on
    pause (0.00001)
end

hold off

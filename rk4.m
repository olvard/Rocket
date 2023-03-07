function [t,y] = rk4(f, tspan, y0, h)

t0 = tspan(1);
tfinal = tspan(2);
t = (t0:h:tfinal)';
n = length(t);

y = zeros(n,length(y0));
y(1,:) = y0(:)';

for i = 1:n-1
    ti = t(i);
    yi = y(i,:)';
    
    k1 = f(ti, yi);
    k2 = f(ti + h/2, yi + h/2*k1);
    k3 = f(ti + h/2, yi + h/2*k2);
    k4 = f(ti + h, yi + h*k3);
    
    y(i+1,:) = (yi + h/6*(k1 + 2*k2 + 2*k3 + k4))';
end
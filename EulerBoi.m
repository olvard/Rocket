function [t,y] = EulerBoi(fun,tspan,y0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(2)-t(1);
y = zeros(length(y0),length(t));
y(1) = y0;

for i = 1:n
    y(i+1) = y(i) + h*fun(t(i),y(i));    
end

end

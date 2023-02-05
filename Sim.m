x0 = 0; 
y0 = 0; 
z0 = 0; 
vx0 = 0; 
vy0 = 0;
vz0 = 0;

t0 = 0; 
tf = 5000; 
dt = 1; 
t = t0:dt:tf; 

y_0 = [x0, y0, z0, vx0, vy0, vz0];
[t, y] = ode45(@rocketDynamics, t, y_0);

plotMD(y,t); 
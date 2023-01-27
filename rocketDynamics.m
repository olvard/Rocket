% Define function for rocket dynamics
function dy = rocketDynamics(t,y)
    g = 9.81; % Acceleration due to gravity
    m = 10; % Mass of the rocket
    Cd = 0.5; %Drag coefficient
    A = 2; %Reference area of the rocket
    rho = 1.2; %Air density
    v = sqrt(y(4)^2 + y(5)^2 + y(6)^2); %Velocity
    Fthrust = 20; % Thrust force of the rocket
    Fdrag = 0.5 * Cd * A * rho * v^2; % Drag force on the rocket
    theta = pi/4; % Angle of thrust vector in x-y plane
    phi = pi/4; % Angle of thrust vector in y-z plane
    
    
    dy = zeros(6,1); % Initialize output
    dy(1) = y(4); % x position
    dy(2) = y(5); % y position
    dy(3) = y(6); % z position
    dy(4) = (Fthrust * cos(theta) - Fdrag * y(4)) / m; % x velocity
    dy(5) = (Fthrust * sin(theta) * cos(phi) - Fdrag * y(5) - m * g) / m; % y velocity
    dy(6) = (Fthrust * sin(theta) * sin(phi) - Fdrag * y(6)) / m; % z velocity
end
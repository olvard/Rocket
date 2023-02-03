% Define function for rocket dynamics
function dy = rocketDynamics(t, y)
    g = 9.81; % Acceleration due to gravity
    m = mass(t); % Mass of the rocket
    Cd = 0.5; % Drag coefficient
    A = 17; % Reference area of the rocket
    
    rho = descendingAirDensity(y(3));
    v = sqrt(y(4)^2 + y(5)^2 + y(6)^2); % Velocity

    Fthrust = getThrust(y(3));
    Fdrag = Cd * (A * rho * v^2) / 2; % Drag force on the rocket

    theta = 0; % Angle of thrust vector in x-y plane
    phi = 0; % Angle of thrust vector in y-z plane
  
    dy = zeros(6,1); % Initialize output
    dy(1) = y(4); % x velocity
    dy(2) = y(5); % y velocity
    dy(3) = y(6); % z velocity
    dy(4) = (Fthrust * sin(theta) * cos(phi) - Fdrag * y(4)) / m; % x acceleration
    dy(5) = (Fthrust * sin(theta) * sin(phi) - Fdrag * y(5)) / m; % y acceleration
    dy(6) = (Fthrust * cos(theta) - Fdrag * y(6) - m * g) / m; % z acceleration
end
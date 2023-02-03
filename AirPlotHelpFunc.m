function Fdrag = AirPlotHelpFunc(y)

    Cd = 0.5; % Drag coefficient
    A = 17; % Reference area of the rocket
    
    rho = descendingAirDensity(y(3));
    
    v = sqrt(y(4)^2 + y(5)^2 + y(6)^2); % Velocity
    
    Fdrag = 0.5 * Cd * A * rho * v^2; % Drag force on the rocket
    
end


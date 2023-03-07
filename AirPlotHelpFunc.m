function Fdrag = AirPlotHelpFunc(y)

    Cd = 0.5;
    A = 17; 
    
    rho = descendingAirDensity(y(3));
    
    v = sqrt(y(4)^2 + y(5)^2 + y(6)^2);
    
    Fdrag = 0.5 * Cd * A * rho * v^2;
    
end


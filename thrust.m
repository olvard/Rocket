function thrust = thrust(height)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    M = 2100; % Mass flow rate
    V_e = 3000; % Velocity of exhaust
    P_e = 0.7; % Exhaust pressure
    [rho, P0] = descendingAirDensity(height); % Atmotsphere pressure
    A_e = 0.7; % Exit area
    
    thrust = M * V_e + (P_e - P0) * A_e;

end
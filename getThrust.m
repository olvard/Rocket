function thrust = getThrust(height,elapsedTime)

% Constants
M = 2100; % Mass flow rate
V_e = 3000; % Velocity of exhaust
P_e = 0.7; % Exhaust pressure
A_e = 0.7; % Exit area

firstStageBurnTime = 162;

% Thrust factor (you will need to set the value)
thrustFactor = 1;

    P0 = descendingAirDensity(height);
   
    if (elapsedTime < firstStageBurnTime)
        % Thrust in Newton
        thrust = (M * V_e + (P_e - P0) * A_e) * thrustFactor;
    else
        thrust = 0; 
    end
end
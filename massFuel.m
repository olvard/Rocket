function [fuelMass] = massFuel(elapsedTime)

    % Constant parameters
    firstStagePropellantMass = 395700;

    burnRate = 1451.496; % fuel burn rate in kg / s

    % Calculate fuel mass
    fuelMass = firstStagePropellantMass - burnRate * elapsedTime;

    % Check for negative mass
    if fuelMass < 0
        fuelMass = 0;
    end
end
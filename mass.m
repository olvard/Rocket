function rocketMass = mass(fuelLeft)

    % Constant parameters
    payloadToLEO = 22800;
    payloadToGTO = 8300;
    payloadToMARS = 4020;

    firstStageRocketMass = 25600;
    secondStageRocketMass = 3900;

    tankMass = 500;
    
    % Initialize rocket mass
    rocketMass = 0;

    if fuelLeft > 0
        rocketMass = firstStageRocketMass + payloadToLEO + fuelLeft;
    else % fuelLeft == 0
        rocketMass = secondStageRocketMass + payloadToLEO;
    end
end
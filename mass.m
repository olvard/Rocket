function rocketMass = mass(fuelLeft)

    % Constant parameters
    payloadToLEO = 22800;

    firstStageRocketMass = 25600;
    secondStageRocketMass = 3900;
    
    % Initialize rocket mass
    rocketMass = 0;

    if fuelLeft > 0
        rocketMass = firstStageRocketMass + payloadToLEO + fuelLeft;
    else % fuelLeft == 0
        rocketMass = secondStageRocketMass + payloadToLEO;
    end
end
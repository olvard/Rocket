function rocketMass = mass(fuelLeft)
 %     tankMass = 2;
 %     propellantMass = 5;
 %     masslossPerSecond = 0.5;
 %     
 %     propellantMass = propellantMass - t * masslossPerSecond;
    rocketMass = 3900;
    tankMass = 500;
    cargo = 25000;

     if (fuelLeft > 0)
         rocketMass = rocketMass + fuelLeft + tankMass + cargo;

     else % fuelLeft == 0
         rocketMass = rocketMass - tankMass + cargo;
     end

 end
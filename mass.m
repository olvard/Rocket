function rocketMass = mass(t)
 %     tankMass = 2;
 %     propellantMass = 5;
 %     masslossPerSecond = 0.5;
 %     
 %     propellantMass = propellantMass - t * masslossPerSecond;

     if (t >= 0 && t <= 162)
         rocketMass = 549054 - 1451.5*t;
%          dm = -2;

     elseif (t > 162)
         rocketMass = 39000;
%          dm = 0;
     end

 end
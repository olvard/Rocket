function [rocketMass, dm] = mass(t)
%     tankMass = 2;
%     propellantMass = 5;
%     masslossPerSecond = 0.5;
%     
%     propellantMass = propellantMass - t * masslossPerSecond;

    if (t >= 0 && t <= 20)
        rocketMass = 50 - 2*t;
        dm = -2;

    elseif (t > 20)
        rocketMass = 10;
        dm = 0;
    end

end

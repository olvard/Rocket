function [m_fuel] = massFuel(t)
% Input: time t in seconds
% Output: fuel mass in kg

% Constant parameters
m_initial = 25000,00; % initial fuel mass in kg
burn_rate = 1451,496; % fuel burn rate in kg/s

% Calculate fuel mass
m_fuel = m_initial - burn_rate * t;

% Check for negative mass
if m_fuel < 0
    m_fuel = 0;
end

end
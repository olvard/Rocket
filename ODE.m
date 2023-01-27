function [f] = rorelseekv(t,y)

G = 9.82; % Gravitationskonstanten
Km = 1500; % Massapartiklarnas konstanta hastighet (m/s) 
C = 0.2; % Luftmotståndet (Sätts som konstant) (kg/m) 

% Definera raketens styrning genom angviet samband och kalla på Vinkel
% funktionen, delivs funktion som bestämmer vinklarna efter tid. 
UX = Km * cos(vinkel(t));
UY = Km * sin(vinkel(t));

% Hämta massa m(t) (M1) och derivatan till massan m'(t) (M2) från de externa tillhörande funktionerna. 
[rocketMass, dm] = mass(t);
% % M2 = MassaPRIM(t);

% Rörelse ekvationerna på ordning 1 (efter omskrivning): 

f = [y(2);
    
     ( -C / rocketMass ) * sqrt( y(2)^2 + y(4)^2 ) * y(2) + (dm/rocketMass) * UX;
   
     y(4);
   
     ( -C / rocketMass ) * sqrt( y(2)^2 + y(4)^2 ) * y(4) + (dm/rocketMass) * UY - G];

end 








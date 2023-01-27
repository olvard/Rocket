function M2 = MassaPRIM(t)

M2 = 50; 

if (0 <= t && 20 >= t) 
    
    M2 = -2; 
    
elseif (t > 20) 
    
    M2 = 0;
    
end 

end


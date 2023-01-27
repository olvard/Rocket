function M1 = Massa(t)

M1 = 50; 

if (0 <= t && 20 >= t) 
    
    M1 = 50 - (2*t) ; 
    
elseif ( t > 20 ) 
    
    M1 = 10; 
    
end 

end



function [density] = descendingAirDensity(altitude)

[T,p] = getairpressure(altitude);

density = p / (0.2869 * (T + 273.1));
    
end

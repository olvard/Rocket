function [] = plotMD(y,t)

    temp = length(y);

    % Mass
    x = zeros(1,561);

    for i=1:temp
        x(1,i) = mass(massFuel(t(i)));
    end
    
    % Fuel
    n = zeros(1,561);

    for i=1:temp
        n(1,i) = massFuel(t(i));
    end

    % Air resistance
    q = zeros(1,561);

    for i=1:temp
        q(1,i) = AirPlotHelpFunc(y(i,:));
    end

    % Thrust
     u = zeros(1,561);

    for i=1:temp
        u(1,i) = getThrust(y(i,3),t);
    end
    
    % Gravity
     G = zeros(1,561);

    for i=1:temp
        G(1,i) = gravity(y(i,3));
    end

    set(gcf,'Visible','on')
    set(gcf, 'Position', get(0, 'Screensize'));
    set(gcf,'name','Falcon 9 - Rocket Simulation','NumberTitle','off')
    
    subplot(4,2,1);
    ani1=animatedline('Color','m','LineWidth',3);
    xlabel("Position")
    ylabel("m")
    title("Position over time")
    grid on
    hold off

    subplot(4,2,2);
    ani2=animatedline('Color','m','LineWidth',3);
    xlabel("Velocity")
    ylabel("m/s")
    title("Velocity over time")
    grid on
    hold off 

    subplot(4,2,3);
    ani3=animatedline('Color','m','LineWidth',3);
    xlabel("Seconds")
    ylabel("N")
    title("Drag over time")
    grid on
    hold off 

    subplot(4,2,4);
    ani4=animatedline('Color','m','LineWidth',3);
    xlabel("Seconds")
    ylabel("KG")
    title("Mass over time")
    grid on
    hold off 
    
    subplot(4,2,5);
    ani5=animatedline('Color','m','LineWidth',3);
    xlabel("Seconds")
    ylabel("Thrust")
    title("Thrust change over time")
    grid on
    hold off 
    
    subplot(4,2,6);
    ani6=animatedline('Color','m','LineWidth',3);
    xlabel("Seconds")
    title("Gravitional pull")
    grid on
    hold off 
    
    subplot(4,2,7);  
    ani7=animatedline('Color','m','LineWidth',3);
    title("Time step iterations")
    xlabel("Amount of iterations")
    yticklabels({'',''})
    ylabel("")
    grid on
    hold off 
    
    subplot(4,2,8);  
    ani8=animatedline('Color','m','LineWidth',3);
    title("Fuel change over time")
    xlabel("Seconds")
    ylabel("KG")
    grid on
    hold off 
    
for i = 1:length(y)
    
    hold on
    addpoints(ani1,t(i),y(i,3));
    hold off 
    
    hold on
    addpoints(ani2,t(i),y(i,6));
    hold off
    
    addpoints(ani3,t(i),q(i));
    hold off 
    
    addpoints(ani4,t(i),x(i));
    hold off
    
    addpoints(ani5,t(i),u(i));
    hold off
    
    addpoints(ani6,t(i),G(3));
    hold off

    addpoints(ani7,t(i), 1);
    hold off
    
    addpoints(ani8,t(i), n(i));
    hold off
    
    drawnow
    pause(0.01);
 
end

end
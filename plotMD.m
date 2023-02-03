function [] = plotMD(y,t)

    % Mass
    x = zeros(1,561);

    for i=1:length(x)
        x(1,i) = mass(massFuel(t(i)));
    end

    % Air resistance
    q = zeros(1,561);

    for i=1:length(q)
        q(1,i) = AirPlotHelpFunc(y(i,:));
    end

    % Thrust
     u = zeros(1,561);

    for i=1:length(q)
        u(1,i) = getThrust(y(i,3));
    end

    set(gcf,'Visible','on')
    set(gcf, 'Position', get(0, 'Screensize'));

    subplot(3,2,1);
    ani1=animatedline('Color','r','LineWidth',2);
    xlabel("Seconds")
    ylabel("m/s")
    title("Velocity over time")
    grid on
    hold off

    subplot(3,2,2);
    ani2=animatedline('Color','blue','LineWidth',2);
    xlabel("Seconds")
    ylabel("m/s^2")
    title("Acceleration over time")
    grid on
    hold off 

    subplot(3,2,3);
    ani3=animatedline('Color','black','LineWidth',2);
    xlabel("Seconds")
    ylabel("N")
    title("Drag over time")
    grid on
    hold off 

    subplot(3,2,4);
    ani4=animatedline('Color','m','LineWidth',2);
    xlabel("Seconds")
    ylabel("KG")
    title("Mass over time")
    grid on
    hold off 
    
    subplot(3,2,5);
    ani5=animatedline('Color','m','LineWidth',2);
    xlabel("Seconds")
    ylabel("Thrust")
    title("Thrust change over time")
    grid on
    hold off 
    
    subplot(3,2,6);  
    ani6=animatedline('Color','red','LineWidth',15);
    ani7=animatedline('Color','black','LineWidth',15);
    title("Trajectory 3D")
    grid on
    view(3);
    zoom(1);
    hold off 
    
for i = 1:length(y)
    
    addpoints(ani1,t(i),y(i,1));
    hold on
    addpoints(ani1,t(i),y(i,2));
    addpoints(ani1,t(i),y(i,3));
    hold off 
    
    addpoints(ani2,t(i),y(i,4));
    hold on
    addpoints(ani2,t(i),y(i,5));
    addpoints(ani2,t(i),y(i,6));
    hold off
    
    addpoints(ani3,t(i),q(i));
    hold off 
    
    addpoints(ani4,t(i),x(i));
    hold off
    
    addpoints(ani5,t(i),u(i));
    hold off
    
    addpoints(ani6,y(i+2,1), y(i+2,2), y(i+2,3));
    addpoints(ani7,y(i,1), y(i,2), y(i,3));
    hold off
    
    drawnow
    pause(0.01);
 
end

end
xPosition = [1e-7 2e-7 3e-7 4e-7 5e-7 6e-7 7e-7 8e-7 9e-7 10e-7];
yPosition = [1e-7 2e-7 3e-7 4e-7 5e-7 6e-7 7e-7 8e-7 9e-7 10e-7];
m0 = 9.10938356e-31; % in Kg
mi = 0.26*m0;
kb = 1.3806452e-23; % in m2 Kg s-2 K-1
Vth = (kb*300)/mi;
xVelocity = Vth*rand(1,10);
yVelocity = sqrt(Vth.^2-(xPosition.^2));
time = 0.2e-12;
timesteps = 10;

% figure(1)
% plot(xPosition,yPosition,'.');
% title("Initial");
% grid on;
% 
% figure (2)
% plot(xPosition+xVelocity.*time,yPosition+yVelocity.*time,'.');
% title("1 step");
% grid on;

Xelectrons = zeros(timesteps,10);
Yelectrons = zeros(timesteps,10);


for i = 1:10
    Xelectrons(i,:) = xPosition+xVelocity.*time*i;
    Yelectrons(i,:) = yPosition+yVelocity.*time*i;
    
    figure(3)
    pause (0.5);
    plot(Xelectrons,Yelectrons);
    grid on;
   
    
    
end   







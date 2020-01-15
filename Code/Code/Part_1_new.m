xPosition = 200e-9.*rand(1,10);
yPosition = 100e-9.*rand(1,10);
m0 = 9.10938356e-31; % in Kg
mi = 0.26*m0;
kb = 1.3806452e-23; % in m2 Kg s-2 K-1
Vth = sqrt((kb*300)/mi);
xVelocity = Vth*rand(1,10);
yVelocity = sqrt(Vth.^2-(xPosition.^2));
time = 0.2e-12;
timesteps = 10;

figure(1)
plot(xPosition,yPosition,'.');
title("Initial");
grid on;

figure (2)
plot(xPosition+xVelocity.*time,yPosition+yVelocity.*time,'.');
title("1 step");
grid on;

Xelectrons = zeros(timesteps,10);
Yelectrons = zeros(timesteps,10);
Xelectrons(1,:) = xPosition;
Yelectrons(1,:) = yPosition;

for i = 2:10
    Xelectrons(i,:) = Xelectrons(i-1,:)+xVelocity.*time*i;
    Yelectrons(i,:) = Yelectrons(i-1,:)+yVelocity.*time*i;
    
    Xelectrons(Xelectrons(i,:) > 200e-9)= Xelectrons- (200e-9);
    
    figure(3)
    pause (0.5);
    plot(Xelectrons,Yelectrons);
    grid on;
   
    
    
end   







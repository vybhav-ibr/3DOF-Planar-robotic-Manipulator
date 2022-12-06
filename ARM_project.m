a1 = 1; a2 = 1; a3 = 1;
px = 2.5; py = 0; phiDeg = -45; phi = phiDeg*pi/180;
wx = px - a3*cos (phi); 
wy = py - a3*sin(phi);
c2 = (wx*wx + wy*wy - a1*a1 - a2*a2)/ (2*a1*a2);
if c2 <= 1
    s2_1 = sqrt(1-c2*c2); 
    theta2_1 = atan2(s2_1,c2); 
    denom_1 = a1*a1 + a2*a2 + 2*a1*a2*cos(theta2_1);
    
    s1_1 = (wy*(a1+a2*cos(theta2_1))-a2*sin(theta2_1)*wx)/denom_1;
    c1_1 = (wx*(a1+a2*cos(theta2_1))+a2*sin(theta2_1)*wy)/denom_1;
    
    
    theta1_1 = atan2(s1_1, c1_1); theta3_1 = phi - theta1_1;
    
    display(rad2deg(theta1_1));
    display(rad2deg(theta2_1));
    display(rad2deg(theta3_1));
    
    
    ax_1 = a1*cos (theta1_1);
    ay_1 = a1*sin(theta1_1);
   
    bx = ax_1 + a2*cos(theta1_1 + theta2_1);by = ay_1 + a2*sin(theta1_1 + theta2_1); 

    cx = px; cy = py;

    xAxisArrayXCoords = [-2.5 2.5];xAxisArrayYCoords = [0 0];
    yAxisArrayXCoords = [0 0];yAxisArrayYCoords = [-2.5 2.5];

    link1XCoords_1 = [0 ax_1];link1YCoords_1 = [.5 ay_1];
    link2XCoords_1 = [ax_1 bx];link2YCoords_1 = [ay_1 by];
    link3XCoords = [bx px];link3YCoords = [by py];

   
    plot(xAxisArrayXCoords,xAxisArrayYCoords,'black',yAxisArrayXCoords,yAxisArrayYCoords,'black' ...
        ,link1XCoords_1,link1YCoords_1,'red',link2XCoords_1,link2YCoords_1,'g',link3XCoords,link3YCoords,'b' );
    hold on;
else
    disp("Not possible");
end

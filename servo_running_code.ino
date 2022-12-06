#include <Servo.h> // include servo library to use its related functions
#define pi 3.14
Servo MG995_Servo1;  
Servo MG995_Servo2; 
Servo MG995_Servo3; 
float t1,t2,t3,theta1_1,theta2_1,theta3_1;

void setup() {
  Serial.begin(9600); 
  MG995_Servo1.attach(6);  
  MG995_Servo2.attach(5);
  MG995_Servo3.attach(3);
}

void turn(){
  float a1 = 14; float a2 = 12; float a3 = 12;
  float px = 15; float py = 18; float phiDeg = 0; float phi = phiDeg*pi/180;
  float wx = px - a3*cos (phi); float wy = py - a3*sin(phi);
  float c2 = (wx*wx + wy*wy - a1*a1 - a2*a2)/ (2*a1*a2);
  if(c2 <= 1)
  {
    float s2_1 = sqrt(1-c2*c2); 
     theta2_1 = atan2(s2_1,c2); 
    float denom_1 = a1*a1 + a2*a2 + 2*a1*a2*cos(theta2_1);
    
    float s1_1 = (wy*(a1+a2*cos(theta2_1))-a2*sin(theta2_1)*wx)/denom_1;
    float c1_1 = (wx*(a1+a2*cos(theta2_1))+a2*sin(theta2_1)*wy)/denom_1;
    
    theta1_1 = atan2(s1_1, c1_1);  theta3_1 = phi - theta1_1;
   
    t1=degrees(theta1_1);
    t2=degrees(theta2_1);
    t3=degrees(theta3_1);
    Serial.print(t1);
    Serial.print(t1);

   MG995_Servo1.write(t1);
   MG995_Servo2.write(t2);
   MG995_Servo3.write(t3);
    
  }
}
void loop() {
  turn();
  }

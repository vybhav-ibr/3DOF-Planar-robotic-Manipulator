# 3DOF-Planar-robotic-Manipulator
Making a 3DOF planar manipulator(Physical Model) which uses inverse kinematics.

In this project I plan to create a 3DOF planar robot using the arduino platform.
When the final position coordinates and the link lengths are given to code,
it uses inverse kinematics to find the required joint angles which are then 
given as input to the servo motors.

The links are made using sheet metal, the template of which are created using Fusion360 software.

The inverse kinematics code which is used for for calculating the joint angles is translated to matlab code to run a simulation to display what the orientation of the joint arm will look like.

Components required:
* arduino UNO
* Links made using sheet matal
* Three MG995 continous servo motors
* cables (M-M),(F-M)


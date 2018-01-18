%disp(Forward Kinematics);
Z_EncoderTicks = 1873829;
mm_rev = 3;
L1 = 100; %length of link 1
L2 = 100; %length of link 2
s = 20; %Theta at link 0
e = 10; %Theta at link 1
w = 0; %endeffector thera
X = L1*cos(s)+L2*cos(s+e)
y = L1*sin(s)+L2*sin(s+e)
C = s+e+w;
z = mm_rev*(Z_EncoderTicks/4096)
%z = v+Z_0;


%Inverse Kinematics

IK_X = 5;
IK_Y = 5;
IK_Z = 5;


Theta1 = asin(IK_X/IK_Y);
Theta2 = acos 
Zrevolutions = 

function [returnArr] = ForwardKinematics (q1,q2,q3)

%link lengths
 l1 = 8;
 l2 = 6;
 mmperrev = 3;
 bits = 10;
 tickspermm=2^bits/mmperrev;
 %l3 = 8.5*2.54;
 
 X=l1*(cos(q1))+l2*(cos(q1+q2));
 
 Y=l1*(sin(q1))+l2*(sin(q1+q2));
 
 Z= ((q3/360)*2^bits)/tickspermm;

 returnArr = [X,Y,Z];

end



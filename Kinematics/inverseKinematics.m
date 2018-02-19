 

%This function takes in teh desired positoin of teh tip and returns the 
%joint angle values neccesary to achieve this positoin 

function [returnArr] = inverseKinematics (Px,Py,Pz)

%link lengths
 l1 = 8*2.54;
 l2 = 6.5*2.54;
 l3 = 8.5*2.54;
 
 q1=acos((Px^2+Py^2-l1^2-l2^2)/(2*l1*l2))
 %(S+Q)=atan2(Py,Px);
 Q= acos((Px^2+Py^2-l1^2-l2^2)/(2*l1*sqrt(Px^2+Py^2)));
 q0=atan2(Py,Px)-Q;
 
 q2=0;
 
 q0 = q0*180/pi
 q1 = q1*180/pi
 q2 = q2*180/pi
 
 returnArr = [q0;q1;q2];
 

end



%System391 contains the file for TF function for the motorx
%From ConvertSteptoTF.m, TF for the motor x has founded as 
%TF = 97.61/ (s^2+6.802s+0.8389)
%6.802s

%read ConvertSteptoTF first
ConvertSteptoTF

%numberator, and denominator of MotorX_tf
[motorxn, motorxd] =tfdata(motorX_tf);

%change the type from cell to array
motorxn = cell2mat(motorxn);
motorxd = cell2mat(motorxd);

motorx=tf(motorxn, motorxd);

% This file contains PID values for motors.
% We used AutoTune to figure out the values
% APPS -> PID Tuner -> implanted motorX_tf

%Setting the varaible values for the PIDX block
%Raw data for the motor Y is not measured yet. Motor X data is used
%instead.

KpX = 0.1465;
KiX = 0.4813;
KdX = 0.008183;

KpY = 0.1465;
KiY = 0.4813;
KdY = 0.008183;


PIDX = [KpX KiX KdX]; 
PIDY = [KpY KiY KdY]; 

%%


%Calculating Transfer function for the motorX

%existing function
TFmotorx = tf(motorxn, motorxd);
motoryn = motorxn;
motoryd = motorxd;
TFmotory = tf(motoryn, motoryd);

%interger to convert rad/s to rad
intr = tf(1, [1 0]);

%Blackbox * intr
GX = TFmotorx * intr;

%Feedback gain is 1
HX = 1;
pidx = pid(KpX, KiX, KdX);
olpidx = pidx*GX;
tfx = feedback(GX, HX);
tfpidx = feedback(GX*pidx, HX); %Transfer function of whole system, PID

%Calculating Transfer function for the motorY
%interger to convert rad/s to rad
intr = tf(1, [1 0]);

%Blackbox * intr
GY = TFmotory * intr;

%Feedback gain is 1
HY = 1;
pidy = pid(KpY, KiY, KdY);
olpidy = pidy*GY;
tfpidy = feedback(GY*pidy, HY); %Transfer function of whole system, PID


%Step(tfpidx)




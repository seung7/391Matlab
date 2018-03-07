
Time = motor(:,1); %load the motor's data to variable 'Time'
AngularVel = motor(:,2); %load the motor's data to variable 'AngularVel'

Step = plot(Time,AngularVel); %creating a step respond 
title('Time vs. AngularVel');
xlabel('Time [s]');
ylabel('AngularVel [rad/s]');
grid on;


data = iddata(AngularVel,Time,1/100000); %creaint an object file 

motorX_tf = tfest(data,2,0,1/100000); % -> motor's openLoop TF function = tfest(data,np,nz): creating estimated TF function from the Step function


%s=stepinfo(motorX_tf) -> Typing this on the command Window will give stepinfo
%motortf = tf(sys); % ->motor's openLoop TF function



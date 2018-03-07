%This data will feed into desire x and y block on simulink.
%This input will create simple square shape.
%while motorx(bottom motor) move once, the motory(Laser motor) will
%oscilate it 5times. Repeating this motion continously, this will
%succesfully create a square shape on a wall.

TotalTime=10;

num = 5;
x    = ceil(0:.5:num); %size 0 to 5, total 11 times
y    = [0 5 0 5 0 5 0 5 0 5 0];

Xtest = [x];
Ytest = [y];

SampleTimetest = TotalTime / (length(Xtest)-1); % -1 in nesscary because it counts from 0.

Timetest = 0:SampleTimetest:TotalTime;       % DO NOT CHANGE TotalTime
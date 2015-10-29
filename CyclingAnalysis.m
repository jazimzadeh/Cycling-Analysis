timesec = cycling(:,1)-80594;   % time in seconds
distance = cycling(:,2);        % distance travelled
HeartRate = cycling(:,3);       % HR in bpm
cadence = cycling(:,4);         % cadence

smoothCadence = smooth(cadence);
smoothHeartRate = smooth(HeartRate);


cycling(:,5) = cycling(:,1)-80594;
Xq=[1:0.1:3651]';
InterpDistance =interp1(cycling(:,5),cycling(:,2),Xq);

velocity = smooth(diff(InterpDistance)/0.1);

plot(InterpDistance(1:end-1,:),velocity)


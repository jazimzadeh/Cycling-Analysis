function [Power] = kurt_kinetic(speed)
% if mph == 'mph'
%     mph_speed = speed;
% end
% elseif mph == 'kph'
%     mph_speed = 0.6213*speed;
% end
% print mph_speed
Power = 5.24482*speed + 0.019168*(speed)^3;

end

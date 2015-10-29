seconds = [1:1:2514];
subplot(2,1,1)
plot(seconds,map_test(:,3));
start_line = line([1248 1248], [0 45]);
set(start_line, 'color', [1 0 0 ])
axis([0 2500 1 45])
ylabel('Speed (Kph)');
xlabel('Time (seconds)');
text (500, 40 ,'Warm-Up');
text (1300, 40 ,'MAP test');
title('Julien - MAP test 1/24/15');

for i = 1:9
    x_marker = 1248 + i*60;
    marker_line = line([x_marker x_marker], [23 37]);
    set(marker_line, 'color', [0.8 0.2 0.2 ], 'LineWidth',0.2);
end

end_line = line([1788 1788], [0 45]);
set(end_line, 'color', [0 1 0 ])
text(2000, 40, 'Cool Down')


subplot(2,1,2)
plot(seconds(1248:1788),map_test(1248:1788,4),'k');
axis([1240 1800 120 420])
ylabel('Power (Watts)')
xlabel('Seconds')
title('Power vs. Time');

power_means = zeros(9,1);
power_means(1,1) = mean(map_test(1248:1248+60,4));
power_means(2,1) = mean(map_test(1248+61:1248+120,4));
power_means(3,1) = mean(map_test(1248+121:1248+180,4));
power_means(4,1) = mean(map_test(1248+181:1248+240,4));
power_means(5,1) = mean(map_test(1248+241:1248+300,4));
power_means(6,1) = mean(map_test(1248+301:1248+360,4));
power_means(7,1) = mean(map_test(1248+361:1248+420,4));
power_means(8,1) = mean(map_test(1248+421:1248+480,4));
power_means(9,1) = mean(map_test(1248+481:1248+560,4));

text(1248+10,400,num2str(floor(power_means(1,1))));
text(1248+71,400,num2str(floor(power_means(2,1))));
text(1248+131,400,num2str(floor(power_means(3,1))));
text(1248+191,400,num2str(floor(power_means(4,1))));
text(1248+251,400,num2str(floor(power_means(5,1))));
text(1248+310,400,num2str(floor(power_means(6,1))));
text(1248+371,400,num2str(floor(power_means(7,1))));
text(1248+431,400,num2str(floor(power_means(8,1))));
text(1248+491,400,num2str(floor(power_means(9,1))));



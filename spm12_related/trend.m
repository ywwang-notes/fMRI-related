% Note: consider using spm_detrend instead

% Get Data
[filelist,flag] = spm_select();
data_pts = spm_get_data(filelist, [55.8 46.4 46.0]');
t = 1:length(data_pts);
t = t';

% Fit Data
b = polyfit(t,data_pts, 3);
fr = polyval(b, t);
% Plot Data & Fit
figure(1)
plot(t, data_pts, '-b')
hold on
plot(t, fr, '-r')
hold off

figure(2)
plot(t, data_pts-fr, '-b')
% the following lines are only good for polyfit(...,1)
% plot(t, data_pts-b(1)*t, '-b')
% hold on
% plot(t, b(2)*ones(1,length(t)), '-r')
% hold off

h1 = legend('Data', 'Linear', 'Location','NE')
set(h1, 'FontSize',8)
[xlim ylim]
textposx = diff(xlim)*0.50+min(xlim);
textposy = diff(ylim)*0.95+min(ylim);
text(textposx,textposy, sprintf('y = %.2f*x %c %0.2f', b(1), char(45-(sign(b(1))+1)), abs(b(2))), 'FontSize',8)
xlabel('TR')
ylabel('Intensity')

% dependency: fft_plot.m

TR = .72;
[filelist,flag] = spm_select();
data_pts = spm_get_data(filelist,[46 44 39]');
data_pts = normc(data_pts);
% [48 34 60] precuneus
% [46 44 39] a dark hole
% [20 80 40] lateral PFC
% [40 90 40] mPFC
% [20 34 50] IPC?
figure
hist(data_pts)
figure
fft_plot(data_pts', 1/TR);
kstest(data_pts) % if 1, not normal

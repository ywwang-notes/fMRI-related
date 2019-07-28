Scripts in this folder requires spm12. 
For matlab, remember to `addpath spm12_folder` first (replace spm12_folder with the actual spm12 path).

# Simple codes

## DICOM header

```
hdr = spm_dicom_headers('filename');
```

## Read and display 3D data

```Matlab
filename = spm_select();
V= spm_vol(filename);
dat = spm_read_vols(V);
size(dat)
figure;
imagesc(squeeze(dat(40,:,:)), [-.3557 .9849]);
colormap('gray');
vis3d(dat) % available here: https://www.mathworks.com/matlabcentral/fileexchange/37268-3d-volume-visualization?s_tid=FX_rc2_behav

```

## Read time series or spatial cross-cut

```Matlab
[filelist1,flag] = spm_select();
timeseries1 = spm_get_data(filelist1, [30 30 30]');
along_x = [1:91;30*ones(1,91);30*ones(1,91)]; 
% vary x and keep (y,z)=(30,30)
spatial1 = spm_get_data(filelist1(1,:), along_x);
```

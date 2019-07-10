## DICOM header
```
filename = spm_select();
hdr = spm_dicom_headers(filename);
hdr{1}
```

## Read time series or spatial cross-cut
```
[filelist1,flag] = spm_select();
timeseries1 = spm_get_data(filelist1, [30 30 30]');

along_x = [1:91;30*ones(1,91);30*ones(1,91)]; 
% vary x and keep (y,z)=(30,30)
spatial1 = spm_get_data(filelist1(1,:), along_x);
```

## display brain image (2D and 3D)
```
filename = spm_select();
V= spm_vol(filename);
dat = spm_read_vols(V);
size(dat)

% 2D image
figure;
imagesc(squeeze(dat(40,:,:)), [-.3557 .9849]);
colormap('gray');

% 3D image
vis3d(dat)
```


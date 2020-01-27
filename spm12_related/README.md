Scripts in this folder requires [spm12](https://github.com/spm/spm12). 
Remember to `addpath spm12_folder` first (replace `spm12_folder` with the actual spm12 path).  
See below for [simple code segments](#seg)    
[tidbits of spm12](https://github.com/ywwang-notes/fMRI-related/blob/master/spm12_related/spm-notes.md)  
[atlas labels](https://github.com/neurodebian/spm12/blob/master/tpm/labels_Neuromorphometrics.xml)  

## Table of Contents

`check_time_series` extract time series at specified coordinates, then plot Fourier transform and histogram  
`fft_plot(X, Fs)` plot Fourier transform of time series X; Fs = 1/TR Hz  
`group_simple` template for looping thru subjects and run spm12 batch  


<a name="seg"></a>
## Code segments

* DICOM header
```matlab
hdr = spm_dicom_headers('filename');
```

* Read and display 3D data
```matlab
filename = spm_select();
V= spm_vol(filename);
dat = spm_read_vols(V);
size(dat)
figure;
imagesc(squeeze(dat(40,:,:)), [-.3557 .9849]);
colormap('gray');
vis3d(dat) % available here: https://www.mathworks.com/matlabcentral/fileexchange/37268-3d-volume-visualization

```

* Read time series or spatial cross-cut
```matlab
[filelist1,flag] = spm_select();
timeseries1 = spm_get_data(filelist1, [30 30 30]');
along_x = [1:91;30*ones(1,91);30*ones(1,91)]; 
% vary x and keep (y,z)=(30,30)
spatial1 = spm_get_data(filelist1(1,:), along_x);
```

## Also useful
[Create ROI masks from spm12 atlas](https://github.com/ywwang-notes/Public-Code-collection/blob/master/matlab/generate_masks_from_atlas.m)

## Misc.

* coordinate systems of ITK-SNAP, image display, and `spm_get_data` are consistent. 

## 1st leve analysis SPM.mat structure

### after model specification
`SPM.xY.P(n,:)` file name of the n-th volumn  
`SPM.nscan` number of scans in each session  
`SPM.Sess(b).U` event vectors of session b  

### after model estimation
See `spm_spm.m`  
`SPM.VBeta` filename (fname) and meaning (descrip) of each beta  

## 2nd level analysis SPM.mat

`spm_contrasts.m` How con.nii and SPM.nii files are created? Search for `Write inference SPM/PPM` in this script  

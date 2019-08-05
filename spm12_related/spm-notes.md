## 1st leve analysis SPM.mat structure

### after model specification
`SPM.xY.P(n,:)` file name of the n-th volumn  
`SPM.nscan` number of scans in each session  
`SPM.Sess(b).U` event vectors of session b  

### after model estimation
`SPM.VBeta` filename (fname) and meaning (descrip) of each beta  

## 2nd level analysis SPM.mat

### `spm_contrasts.m` How con.nii and SPM.nii created? Search for `Write inference SPM/PPM`

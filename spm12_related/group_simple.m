% note: if you would like to create batch scripts for each subject, 
% use group_batch.m instead.

spm('defaults','fmri');
spm_jobman('initcfg');

upperdir = ''; % revise here

% set up for jobs
clear matlabbatch;

sidlst = [];
% I use 4 digit numbers as folder names

for sbj=1:length(sidlst)
    sid = num2str(sidlst(sbj), '%04i'); % generate folder name
    run_n = sbj; % revise it according to your design
    
    % copy and paste template matlabbatch created by batch editor 
    % replace the index with run_n, eg. matlabbatch{run_n}
    
end % end of loop thru subject folders

spm_jobman('run',matlabbatch);

% movefile(['.nii'], target_dir); % move the output nii files to the target directories

% note: if you would like to create batch scripts for each subject, 
% use group_batch.m instead.
% exmaples of adoption: https://github.com/ywwang-notes/Personal-Projects/blob/master/spm12/

spm('defaults','fmri');
spm_jobman('initcfg');

% set up for jobs
clear matlabbatch;

sidlst = []; % fill in subject ID numbers; I use 4 digits as folder names
% sidlst = {}; % or, fill in folder names, eg. {'0001' '0002'} 

for sbj=1:length(sidlst)

    % copy and paste template batch code created by batch editor 
    % replace the index with run_n, eg. matlabbatch{run_n}
    % and change run_n based on your design

end % end of loop thru subject folders

spm_jobman('run',matlabbatch);

function[con_list] = query_con(ev, SPM)
% Usage: please load SPM.mat before query
% ev: (string) name of the event

[row, col] = size(SPM.xCon);
con_list = find(strcmp(target, {SPM.xCon(1:col).name}));

end % function

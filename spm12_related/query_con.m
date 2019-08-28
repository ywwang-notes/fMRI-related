function[con_list] = query_con(ev, SPM)
% Usage: please load SPM.mat before query
% ev: (string) name of the event
% example of adaptation: https://github.com/ywwang-notes/Personal-Projects/blob/master/query_con.m

[row, col] = size(SPM.xCon);
con_list = find(strcmp(target, {SPM.xCon(1:col).name}));

end % function

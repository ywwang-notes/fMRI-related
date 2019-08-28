function[con_list] = query_con(ev, SPM)
% Usage: please load SPM.mat before query
% ev: (string) name of the event
% v1: 'c', 'c11', 'c12', 'c21', 'c22', 's11', 's12', 's21', 's22', 'x', 'o'
% v2:'c', 'c1', 'c2', 's1', 's2', 'x', 'o'

[row, col] = size(SPM.xCon);
con_list = [];
for b = 1:5
    target = sprintf('b%i%s', b, ev);
    con_list = [con_list find(strcmp(target, {SPM.xCon(1:col).name}))];
end % blocks

end % function
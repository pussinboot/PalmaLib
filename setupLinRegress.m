function [  ] = setupLinRegress( numNodes )

inputcode = 'polyfit([';
for i = 1:numNodes-1
    inputcode = [inputcode 'u(' num2str(i + numNodes) '),'];
end
inputcode = [inputcode 'u(' num2str(2* numNodes) ')],[' ];
for i = 1:numNodes-1
    inputcode = [inputcode 'u(' num2str(i) '),'];
end
inputcode = [inputcode 'u(' num2str(numNodes) ')],1)'];
set_param([gcb '/solver'],'MATLABFcn',inputcode);
end


function [ num ] = findLastNums( providedString )
%Find the number at the end of a string
providedString = strtrim(providedString);
numFound = [];
digits = num2str(0:9);
digits(digits==' ') = '';
for i = 0: length(providedString)-1
    thisiteration = false;
    for j = 1:10
        if(providedString(length(providedString)-i)==digits(j))
            numFound = [digits(j) numFound];
            thisiteration = true;
        else if(j==10&&~thisiteration)
                return;
            end
        end
    end
num = str2num(numFound);
end

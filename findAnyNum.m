function [ numFound ] = findAnyNum( providedString )
%Find any numbers contained within a string
numFound = [];
digits = num2str(0:9);
digits(digits==' ') = '';
    for i = 1:10
        numFound = [numFound providedString(strfind(providedString,digits(i)))];
    end
end


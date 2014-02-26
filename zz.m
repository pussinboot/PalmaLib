function [ out ] = zz( input,l )
%outputs a vector of length l, where the input'th element is a one and all
%the rest are zero
zzz = zeros(l,1);
zzz(input+1,1) = 1;
out = zzz;

end


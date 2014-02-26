function [ out ] = playNice( u )
%playNice - returns a matrix that has only nice elements (no NaN or Inf)
u(isnan(u))=0;
u(isinf(u))=0;
out = u;
end


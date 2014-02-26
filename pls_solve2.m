function [ r ] = pls_solve2( node , weight, X0 )
%bypass sillyness
%X0 = [0.1 0 0.1];
r = lsqnonlin(@fit_simp2,X0,[],[],[],node,weight);
end
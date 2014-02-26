
% define function I want to minimize
function diff = fit_simp2(x,X,Y) %X and Y dimensions must agree! !!
  B1 = x(1);
  B2 = x(2);
  %B3 = x(3);
  % sigmoid function where B1 is amplitude and B2 is the shift
  diff = B1./(1+exp(-1*B2*(X-1)))-Y;
end
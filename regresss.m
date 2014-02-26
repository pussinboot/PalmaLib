load regressworking.mat;
%for w_not = .1:.01:.2
w_not = .15; %starting weight
%t is target matrix
for i = 1:200;
t(i,:) = (x.signals.values(i*1000,:,:)-.1).*(2-w_not)./.9+w_not;
%u is output matrix
u(i,:) = y.signals.values(:,:,i*1000);
hold on
%plotregression(t(i,:),u(i,:));
hold off
%[b,bint,r,rint,stats] = regress(t(i,:)',u(i,:)');
end
%[b,bint,r,rint,stats] = regress(t(1,:)',u(1,:)');
%b = regress(t(2,:)',u(2,:)')
[r,m,b] = regression(t,u);
%plotregression(t,u);
e = t - u;
%ploterrhist(e)
%let's plot all the regressions
figure();
[row ~] = size(t);
for i = 1:row
   hold on
   plot(m(i).*(t(i,:)) + b(i));
   hold off
end
hold on
%draw the expected)
plot((x.signals.values(1000,:,:)-.1).*(2-w_not)./.9+w_not,'r','LineWidth',4);

%h = line([1 10],[-w_not 1],'Color','r','LineWidth',2.5,'linestyle','--')
%plot(m(20))
hold off
%end
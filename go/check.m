i=1;
ydata=zeros(1,9);
for xdata=-4:1:4
    ydata(i)=(3^2*(1-xdata^2/4^2))^(1/2);
    i=i+1;
end
xdata=-4:1:4;
xdata=xdata';ydata=ydata';
x0=[10,200.01,5.22];
A= lsqcurvefit(@Ellipse,x0,xdata,ydata);
k=1;
for xdata=-4:0.001:4
    ydata(k)=Ellipse(A,xdata);
    k=k+1;
end
xdata=-4:0.001:4;
plot(xdata,ydata)
% xdata = ...
%  [0.9 1.5 13.8 19.8 24.1 28.2 35.2 60.3 74.6 81.3];
% ydata = ...
%  [455.2 428.6 124.1 67.3 43.2 28.1 13.1 -0.4 -1.3 -1.5];
% 
% 
% 
% x0 = [100,-1];
% x = lsqcurvefit(@fun,x0,xdata,ydata);
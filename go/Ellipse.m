function ydata = Ellipse(x,xdata)
partA=(xdata-x(1))/x(2);
partB=(1-partA.^2);
partC=x(3).^2;
ydata=(partB.*partC).^(1/2);

end


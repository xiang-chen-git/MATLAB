function [y1,y2] = qeq(b,c)
if (b>0)
    y1 = (-b-sqrt(b^2-4*c))/2;
    y2 = 4*c/(2*(-b-sqrt(b^2-4*c)));
else
    y1 = 4*c/(2*(-b+sqrt(b^2-4*c)));
    y2 = (-b+sqrt(b^2-4*c))/2;
end

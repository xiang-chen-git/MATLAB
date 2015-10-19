function s=helpmethod(w)
         s = dsolve('D2y+y=3*cos(w*t)','y(0)=0','Dy(0)=0')
         ezplot(s,[0 15])
         
end

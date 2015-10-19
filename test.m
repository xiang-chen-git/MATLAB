T1 = (1/6)*(1/6) + (1/6)*(2/3) + (1/6)*(2/3)+ 0+0+ (1/6)*(1/6)+(1/6)*(1/6);
T2 = (2/3)*(2/3)+(1/6)*(2/3) + (1/6)*(2/3)+0+0+(2/3)*(1/6) + (2/3)*(1/6);
T3 = 0;
T4 = (1/6)*(1/6)+(1/6)*(1/6)+(1/6)*(1/6)+(1/6)*(2/3) + (1/6)*(2/3)+0;

y1 =18;
y2 = 27;
y3 = 0;
y4 = 15;

p1 = 1/6;
p2 = 2/3;
p3 = 0;
p4 = 1/6;

row1 = y1/p1 
row2 = y2/p2 
row3 = 0 
row4 = y4/p4 
row5 = (row1+row2)/2
row6 = (row1+row2)/2 
row7 = (row1+row3)/2
row8 = (row1+row3)/2
row9 = (row1+row4)/2
row10 = (row1+row4)/2
row11 = (row2+row3)/2
row12 = (row2+row3)/2
row13 = (row2+row4)/2
row14 = (row2+row4)/2
row15 = (row3+row4)/2
row16 = (row3+row4)/2 



cow1 = y1/T1
cow2 = y2/T2 
cow3 = 0 
cow4 = y4/T4 
cow5 = cow1+cow2
cow6 = cow1+cow2 
cow7 = cow1+cow3
cow8 = cow1+cow3
cow9 = cow1+cow4
cow10 = cow1+cow4
cow11 = cow2+cow3
cow12 = cow2+cow3
cow13 = cow2+cow4
cow14 = cow2+cow4
cow15 = cow3+cow4
cow16 = cow3+cow4


dow1 = 4*y1
dow2 = 4*y2
dow3 = 0 
dow4 = 4*y4 
dow5 = 4*(y1/T1+y2/T2)/(1/T1+1/T2)
dow6 = 4*(y1/T1+y2/T2)/(1/T1+1/T2)
dow7 = 4*(y1/T1+0)/(1/T1)
dow8 = 4*(y1/T1+0)/(1/T1)
dow9 = 4*(y1/T1+y4/T4)/(1/T1+1/T4)
dow10 = 4*(y1/T1+y4/T4)/(1/T1+1/T4)
dow11 = 4*(y2/T2+0)/(1/T2)
dow12 = 4*(y2/T2+0)/(1/T2)
dow13 = 4*(y2/2+y4/T4)/(1/T2+1/T4)
dow14 = 4*(y2/2+y4/T4)/(1/T2+1/T4)
dow15 = 4*(y4/T4+0)/(1/T4)
dow16 = 4*(y4/T4+0)/(1/T4)


e1 = (row1+row2+row3+row4+row5+row6+row7+row8+row9+row10+row11+row12+row13+row14+row15+row16)/16
e2 = (cow1+cow2+cow3+cow4+cow5+cow6+cow7+cow8+cow9+cow10+cow11+cow12+cow13+cow14+cow15+cow16)/16
e3 = (dow1+dow2+dow3+dow4+dow5+dow6+dow7+dow8+dow9+dow10+dow11+dow12+dow13+dow14+dow15+dow16)/16

v1= (3^2+12^2+15^2+0)/4
v2=(6^2+48^2+39^2+19.5^2+3^2+30^2)/6
v3= (30^2+6^2+24^2+6^2+24^2+30^2)/6

y5 =(y1+y2+y3+y4)/4
v4 = 4/3*((y1-y5)^2+(y2-y5)^2+(y3-y5)^2+(y4-y5)^2)



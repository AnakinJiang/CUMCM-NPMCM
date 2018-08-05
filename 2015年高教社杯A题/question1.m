jingdu = (116+23/60+29/3600)*pi/180;
weidu = (39+54/60+26/3600)*pi/180;
year = 2015;
month = 10;
day = 22;
L = [];
time = linspace(9,15,100);
H = 3;
for i=1:100
    L(i)=H/tan(calculate_h(year,month,day,jingdu,weidu,time(i)));
end
plot(time,L)
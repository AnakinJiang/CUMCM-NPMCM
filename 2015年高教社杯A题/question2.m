A = xlsread('附件1-3.xls','附件1');
hour=[];
minute=[];
fj2=ones(21,2);
for i=1:21
    fj2(i,1)=A(i,1)*24;
    fj2(i,2)=sqrt(A(i,2)^2+A(i,3)^2);
end
jingdu = linspace(73,135,500)*pi/180;
weidu=linspace(4,53,250)*pi/180;
year = 2015;
month = 4;
day = 18;
min = 1000000;
X=0;Y=0;H=0;
L=linspace(0,10,200);
for i=1:length(jingdu)
    for j=1:length(weidu)
        for k=1:length(L)
            num=0;
            for l=1:21
                num=num+(L(k)/tan(calculate_h(year,month,day,jingdu(i),weidu(j),fj2(l,1)))-fj2(l,2))^2;
            end
            if num <= min
                min=num;
                X=weidu(j);
                Y=jingdu(i);
                H=L(k);
            end
        end
    end
end
fprintf('最优纬度：北纬%f°\n',X*180/pi);
fprintf('最优经度度：东经%f°\n',Y*180/pi);
fprintf('此时杆长：%f\n',H);
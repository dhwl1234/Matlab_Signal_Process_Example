%最小二乘法拟合曲线+标题 显示变量
% 加变量有2种方式
% 
% title(sprintf("%d次拟合曲线", i))
% title ( ['运行时间: ',num2str(i) ] );
% 注意事项
% title这句代码需要放在Plot()后面

x=0:0.1:1;
y=[-0.447 1.798 3.28 6.18 7.02 7.32 7.88 9.56 9.56 9.30 11.2];
 
figure('NumberTitle', 'off', 'Name', '比较多次多项式最小二乘拟合曲线');  %%自定义新窗口名称
for i=1:4
p=polyfit(x,y,i);
xi=linspace(0,1,100);
yi=polyval(p,xi);
 
disp(i)
subplot(2,2,i)
plot(x,y,'o',xi,yi);
% title(sprintf("%d次多项式最小二乘拟合", i))
title ( ['运行时间: ',num2str(i) ] );
end

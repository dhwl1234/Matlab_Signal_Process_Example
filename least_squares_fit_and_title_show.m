%��С���˷��������+���� ��ʾ����
% �ӱ�����2�ַ�ʽ
% 
% title(sprintf("%d���������", i))
% title ( ['����ʱ��: ',num2str(i) ] );
% ע������
% title��������Ҫ����Plot()����

x=0:0.1:1;
y=[-0.447 1.798 3.28 6.18 7.02 7.32 7.88 9.56 9.56 9.30 11.2];
 
figure('NumberTitle', 'off', 'Name', '�Ƚ϶�ζ���ʽ��С�����������');  %%�Զ����´�������
for i=1:4
p=polyfit(x,y,i);
xi=linspace(0,1,100);
yi=polyval(p,xi);
 
disp(i)
subplot(2,2,i)
plot(x,y,'o',xi,yi);
% title(sprintf("%d�ζ���ʽ��С�������", i))
title ( ['����ʱ��: ',num2str(i) ] );
end

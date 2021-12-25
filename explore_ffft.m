% ��1��x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t)������Ƶ��fs=100Hz���ֱ����N=128��1024���Ƶͼ��
clf;
fs=100;N=128;   %����Ƶ�ʺ����ݵ���
n=0:N-1;t=n/fs;   %ʱ������
x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t); %�ź�
y=fft(x,N);    %���źŽ��п���Fourier�任
mag=abs(y)*2/N;     %���Fourier�任������
f=n*fs/N;    %Ƶ������
subplot(2,2,1),plot(f,mag);   %�����Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');title(['N=128������Ƶ��Ϊ:',num2str(fs)]);grid on;
subplot(2,2,2),plot(f(1:N/2),mag(1:N/2)); %���NyquistƵ��֮ǰ��Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');title(['N=128������Ƶ��Ϊ:',num2str(fs)]);grid on;
%���źŲ�������Ϊ1024��Ĵ���
fs=1024;N=1024;n=0:N-1;t=n/fs;
x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t); %�ź�
y=fft(x,N);   %���źŽ��п���Fourier�任
mag=abs(y)*2/N;   %��ȡFourier�任�����
f=n*fs/N;
subplot(2,2,3),plot(f,mag); %�����Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');title(['N=1024������Ƶ��Ϊ:',num2str(fs)]);grid on;
subplot(2,2,4)
plot(f(1:N/2),mag(1:N/2)); %���NyquistƵ��֮ǰ��Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');title(['N=1024������Ƶ��Ϊ:',num2str(fs)]);grid on;
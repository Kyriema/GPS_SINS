
%%%%����txt�ļ�������Ϊmat��ʽ����
%stm32=textread('F:\��λ\�Ϲ���\�ܳ�ʵ��\��ʼ��׼ʵ��\aligin.txt','%s')';
%stm32=textread('F:\��λ\�Ϲ���\�ܳ�ʵ��\3.29�ɼ�����\�ڶ���\data.txt','%s')';
stm32=textread('F:\��λ\�Ϲ���\�ܳ�ʵ��\3.29�ɼ�����\������\data.txt','%s')';

n=size(stm32,2);%����
h=floor(n/71);%����
stm32_1=stm32(:,1:h*71);%�ض϶�����к������

stm32_data.gro=zeros(h,3);%������ݵĽṹ��
stm32_data.acc=zeros(h,3);
stm32_data.mgn=zeros(h,3);
stm32_data.att=zeros(h,3);
stm32_data.gps=zeros(h,2);%ֻ������γ�ȣ��߶�Ϊ�̶�ֵ
stm32_data.t=zeros(h,1);
g=9.7833;%�������ٶ�
 k=1;
for i=1:71:h*71
    if strcmp(stm32_1{1,i},'81')%�жϵ�һ���ֽ��Ƿ�Ϊ81
        %������
        stm32_data.gro(k,1)=strcat4(stm32_1{1,i+4},stm32_1{1,i+3},stm32_1{1,i+2},stm32_1{1,i+1})*180/pi;%ԭʼ��λΪ���ȣ�ת��Ϊ��
        stm32_data.gro(k,2)=strcat4(stm32_1{1,i+8},stm32_1{1,i+7},stm32_1{1,i+6},stm32_1{1,i+5})*180/pi;%ԭʼ��λΪ���ȣ�ת��Ϊ��
        stm32_data.gro(k,3)=strcat4(stm32_1{1,i+12},stm32_1{1,i+11},stm32_1{1,i+10},stm32_1{1,i+9})*180/pi;%ԭʼ��λΪ���ȣ�ת��Ϊ��
        %���ٶȼ�
        stm32_data.acc(k,1)=strcat4(stm32_1{1,i+16},stm32_1{1,i+15},stm32_1{1,i+14},stm32_1{1,i+13})/1000*g;%%ԭʼ��λΪmg��ת��Ϊm/s2
        stm32_data.acc(k,2)=strcat4(stm32_1{1,i+20},stm32_1{1,i+19},stm32_1{1,i+18},stm32_1{1,i+17})/1000*g;
        stm32_data.acc(k,3)=strcat4(stm32_1{1,i+24},stm32_1{1,i+23},stm32_1{1,i+22},stm32_1{1,i+21})/1000*g;
        %������
        stm32_data.mgn(k,1)=strcat4(stm32_1{1,i+28},stm32_1{1,i+27},stm32_1{1,i+26},stm32_1{1,i+25})/1000;%ԭʼ��λΪmguss��ת��Ϊguss
        stm32_data.mgn(k,2)=strcat4(stm32_1{1,i+32},stm32_1{1,i+31},stm32_1{1,i+30},stm32_1{1,i+29})/1000;
        stm32_data.mgn(k,3)=strcat4(stm32_1{1,i+36},stm32_1{1,i+35},stm32_1{1,i+34},stm32_1{1,i+33})/1000;
        %��̬��
        stm32_data.att(k,1)=strcat4(stm32_1{1,i+40},stm32_1{1,i+39},stm32_1{1,i+38},stm32_1{1,i+37});%��
        stm32_data.att(k,2)=strcat4(stm32_1{1,i+44},stm32_1{1,i+43},stm32_1{1,i+42},stm32_1{1,i+41});
        stm32_data.att(k,3)=strcat4(stm32_1{1,i+48},stm32_1{1,i+47},stm32_1{1,i+46},stm32_1{1,i+45});
         %��γ��
        stm32_data.gps(k,1)=strcat4(stm32_1{1,i+52},stm32_1{1,i+51},stm32_1{1,i+50},stm32_1{1,i+49});%��
        stm32_data.gps(k,2)=strcat4(stm32_1{1,i+56},stm32_1{1,i+55},stm32_1{1,i+54},stm32_1{1,i+53});
        stm32_data.t(k,1)=k*0.01;
        k=k+1;
    end;
end
t=stm32_data.t(:,1);
%�˲���ȥ��̫���ë��
stm32_data.gro(:,1)=smooth(stm32_data.gro(:,1),'rlowess');
stm32_data.gro(:,2)=smooth(stm32_data.gro(:,2),'rlowess');
stm32_data.gro(:,3)=smooth(stm32_data.gro(:,3),'rlowess');
stm32_data.acc(:,1)=smooth(stm32_data.acc(:,1),'rlowess');
stm32_data.acc(:,2)=smooth(stm32_data.acc(:,2),'rlowess');
stm32_data.acc(:,3)=smooth(stm32_data.acc(:,3),'rlowess');
stm32_data.mgn(:,1)=smooth(stm32_data.mgn(:,1),'rlowess');
stm32_data.mgn(:,2)=smooth(stm32_data.mgn(:,2),'rlowess');
stm32_data.mgn(:,3)=smooth(stm32_data.mgn(:,3),'rlowess');
stm32_data.att(:,1)=smooth(stm32_data.att(:,1),'rlowess');
stm32_data.att(:,2)=smooth(stm32_data.att(:,2),'rlowess');
stm32_data.att(:,3)=smooth(stm32_data.att(:,3),'rlowess');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%
%���ݱ���Ϊmat��ʽ����Ҫÿ�ζ���ȥ����txt�ļ�
save('F:\��λ\�Ϲ���\�ܳ�ʵ��\3.29�ɼ�����\stm32_data','stm32_data');
figure(1);
subplot(3,1,1) ,plot(t,stm32_data.gro(:,1));xlabel('ʱ��t'),ylabel('������x%legend('�궨����','ԭʼ����')
subplot(3,1,2) ,plot(t,stm32_data.gro(:,2)*180abel('ʱ��t'),ylabel('������y');
%legend('�궨����','ԭʼ����')
subplot(3,1,3) ,plot(t,stm32_data.gro(:,3)*180abel('ʱ��t'),ylabel('������z');
%legend('�궨����','ԭʼ����')
title('����������');

figure(2);
subplot(3,1,1) ,plot(t,stm32_data.acc(:,1));xlabel('ʱ��t'),ylabel('���ٶȼ�x');
%legend('�궨����','ԭʼ����')
subplot(3,1,2) ,plot(t,stm32_data.acc(:,2));xlabel('ʱ��t'),ylabel('���ٶȼ�y');
%legend('�궨����','ԭʼ����')
subplot(3,1,3) ,plot(t,stm32_data.acc(:,3));xlabel('ʱ��t'),ylabel('���ٶȼ�z');
% legend('�궨����','ԭʼ����')
title('���ٶȼ�');

figure(3);
subplot(3,1,1) ,plot(t,stm32_data.mgn(:,1));xlabel('ʱ��t'),ylabel('������x');
% legend('�궨����','ԭʼ����')
subplot(3,1,2) ,plot(t,stm32_data.mgn(:,2));xlabel('ʱ��t'),ylabel('������y');
% legend('�궨����','ԭʼ����')
subplot(3,1,3) ,plot(t,stm32_data.mgn(:,3));xlabel('ʱ��t'),ylabel('������z');
% legend('�궨����','ԭʼ����')
title('������');

figure(4);
subplot(3,1,1) ,plot(t,stm32_data.att(:,1));xlabel('ʱ��t'),ylabel('Roll');
% legend('�궨����','ԭʼ����')
subplot(3,1,2) ,plot(t,stm32_data.att(:,2));xlabel('ʱ��t'),ylabel('Pitch');
% legend('�궨����','ԭʼ����')
subplot(3,1,3) ,plot(t,stm32_data.att(:,3));xlabel('ʱ��t'),ylabel('Yaw');
% legend('�궨����','ԭʼ����')
title('��̬��');

figure(5);
subplot(2,1,1) ,plot(t,stm32_data.gps(:,1));xlabel('ʱ��t'),ylabel('����');
subplot(2,1,2) ,plot(t,stm32_data.gps(:,2));xlabel('ʱ��t'),ylabel('γ��');
title('GPS');

figure(6)
plot(stm32_data.gps(:,1),stm32_data.gps(:,2));
%scatter(stm32_data.gps(:,1),stm32_data.gps(:,2),'k*');
title('�켣');



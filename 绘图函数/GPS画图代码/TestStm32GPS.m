
% stm32=textread('F:\��λ\Git-SINS-Branch\GPS_SINS\6.20��ѧ�����ݲɼ�\��һ�βɼ�\��һ���ܳ���ֹ�ɼ�GPS.txt','%s')';
 stm32=textread('F:\��λ\Git-SINS-Branch\GPS_SINS\6.20��ѧ�����ݲɼ�\��һ�βɼ�\��һ���ܳ��ɼ�GPS.txt','%s')';

n=size(stm32,2);%����
h=n/27;
Re=6378137;
stm32_data.gps=zeros(h,6);%ֻ������γ�ȣ��߶ȣ���ά�ٶ�
k=1;
t=1:1:h;
for i=2:27:n
         %��γ��
        stm32_data.gps(k,2)=strcat4(stm32{1,i+3},stm32{1,i+2},stm32{1,i+1},stm32{1,i});%����
        stm32_data.gps(k,1)=strcat4(stm32{1,i+7},stm32{1,i+6},stm32{1,i+5},stm32{1,i+4});%γ��
        stm32_data.gps(k,3)=strcat4(stm32{1,i+11},stm32{1,i+10},stm32{1,i+9},stm32{1,i+8});%�߶�
         stm32_data.gps(k,4)=strcat5(stm32{1,i+15},stm32{1,i+14},stm32{1,i+13},stm32{1,i+12});%E�ٶ�
         stm32_data.gps(k,5)=strcat5(stm32{1,i+19},stm32{1,i+18},stm32{1,i+17},stm32{1,i+16});%N�ٶ�
         stm32_data.gps(k,6)=strcat5(stm32{1,i+23},stm32{1,i+22},stm32{1,i+21},stm32{1,i+20});%D�ٶ�
        k=k+1;
 end;
 
stm32_data.gps(:,1)=smooth(stm32_data.gps(:,1),'rlowess');
stm32_data.gps(:,2)=smooth(stm32_data.gps(:,2),'rlowess');
 
figure(1)
% plot(0, 0, 'rp');   
% hold on, 
%plot(stm32_data.gps(:,1), stm32_data.gps(:,2)); 
plot((stm32_data.gps(:,2)-stm32_data.gps(1,2))*Re*cos(stm32_data.gps(1,1)*pi/180), (stm32_data.gps(:,1)-stm32_data.gps(1,1))*Re*pi/180); xygo('est', 'nth');
% scatter(stm32_data.gps(:,1),stm32_data.gps(:,2),'k*');
title('�켣');
figure(2)
plot(t,stm32_data.gps(:,3));
%scatter(stm32_data.gps(:,1),stm32_data.gps(:,2),'k*');
title('�߶�');
function [roll,pitch,yaw]=getAtt(route)
%ֱ��������������ĽǶ������ó�ʼ��̬�Ǻ���
% ����route������·��
% ���roll��������
% pitch��������
% yaw����λ��

DATA=importdata(route);
N=size(DATA.data,1);%����
t1=0.01:0.01:N*0.01;
t1=t1';
%���ֵ
Acc_X=mean(DATA.data(:,2));
Acc_Y=mean(DATA.data(:,3));
Acc_Z=mean(DATA.data(:,4));
Gro_X=mean(DATA.data(:,5));
Gro_Y=mean(DATA.data(:,6));
Gro_Z=mean(DATA.data(:,7));

roll=mean(DATA.data(:,11));
pitch=mean(DATA.data(:,12));
yaw=mean(DATA.data(:,13));
% figure(1);%���ٶ�
% subplot(311);plot(t1,DATA.data(:,2));legend('x');title('���ٶ�');ylabel('m/s2');xlabel('t/s');
% subplot(312);plot(t1,DATA.data(:,3));legend('y');ylabel('m/s2');xlabel('t/s');
% subplot(313);plot(t1,DATA.data(:,4));legend('z');ylabel('m/s2');xlabel('t/s');
% figure(2);%���ٶ�
% subplot(311);plot(t1,DATA.data(:,5));legend('x');title('���ٶ�');ylabel('deg/s');xlabel('t/s');
% subplot(312);plot(t1,DATA.data(:,6));legend('y');ylabel('deg/s');xlabel('t/s');
% subplot(313);plot(t1,DATA.data(:,7));legend('z');ylabel('deg/s');xlabel('t/s');
% figure(3);%�����ƣ���һ���ش�ʸ��
% subplot(311);plot(t1,DATA.data(:,8));legend('x');title('������');ylabel('AU');xlabel('t/s');
% subplot(312);plot(t1,DATA.data(:,9));legend('y');ylabel('AU');xlabel('t/s');
% subplot(313);plot(t1,DATA.data(:,10));legend('z');ylabel('AU');xlabel('t/s');
% figure(4);%��̬��
% subplot(311);plot(t1,DATA.data(:,11));legend('roll');title('��̬��');ylabel('deg');xlabel('t/s');
% subplot(312);plot(t1,DATA.data(:,12));legend('pitch');ylabel('deg');xlabel('t/s');
% subplot(313);plot(t1,DATA.data(:,13));legend('yaw');ylabel('deg');xlabel('t/s');
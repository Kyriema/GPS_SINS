%��������ƻ�ó�ʼ��̬��

%  DATA=importdata('F:\��λ\Git-SINS-Branch\GPS_SINS\6.21�������ݲɼ�\INS_Static2-000.txt');
DATA=importdata('F:\��λ\Git-SINS-Branch\GPS_SINS\��ʼ��׼\��̬�ɼ�����\south-000.txt');
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
Mag_X=mean(DATA.data(:,8));
Mag_Y=mean(DATA.data(:,9));
Mag_Z=mean(DATA.data(:,10));
Roll=mean(DATA.data(:,11));
Pitch=mean(DATA.data(:,12));
Yaw=mean(DATA.data(:,13));

g=sqrt(Acc_X^2+Acc_Y^2+Acc_Z^2);
%����һ��
a=-3.373795*pi/180;
pitch=asin(Acc_Y/g);
roll=asin(-Acc_X/g/cos(pitch));


Cbh=[cos(roll) 0 sin(roll);sin(pitch)*sin(roll)  cos(pitch) -sin(pitch)*cos(roll);-cos(pitch)*sin(roll)  sin(pitch) cos(pitch)*cos(roll) ];
Mag_h=Cbh*[Mag_X Mag_Y Mag_Z]';
yaw=atan((Mag_h(1,1)*cos(a)-Mag_h(2,1)*sin(a))/((Mag_h(1,1))*sin(a)+Mag_h(2,1)*cos(a)))*180/pi;
%��������
% C3=[Acc_X/g,Acc_Y/g,Acc_Z/g];
% temp=sqrt((Acc_Y/g)^2+(Acc_Z/g)^2);
% C2=[0,-Acc_Z/g/temp,Acc_Y/g/temp];
% C1=cross(C2,C3);
% Cbh=[C1',C2',C3']';
%






% figure(1);%���ٶ�
% % subplot(311);plot(t1,DATA.data(:,2),t1,DAT`A.data(:,2)-Acc_X);legend('x');title('���ٶ�');ylabel('m/s2');xlabel('t/s');
% % subplot(312);plot(t1,DATA.data(:,3),t1,DATA.data(:,3)-Acc_Y);legend('y');ylabel('m/s2');xlabel('t/s');
% % subplot(313);plot(t1,DATA.data(:,4),t1,DATA.data(:,4)-Acc_Z);legend('z');ylabel('m/s2');xlabel('t/s');
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
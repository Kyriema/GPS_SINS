%%%���ݲɼ���ȥ��ֵ�󱣴�
% DATA=importdata('Free_acceleration2.txt');
%DATA=importdata('F:\��λ\Git-SINS-Branch\GPS_SINS\6.21�������ݲɼ�\INS_sport2-000.txt');
 DATA=importdata('F:\��λ\Git-SINS-Branch\GPS_SINS\��ʼ��׼\��̬�ɼ�����\north-000.txt');
N=size(DATA.data,1);%����
t1=0.01:0.01:N*0.01;
t1=t1';


%С��ȥ��
Acc_X_Noise = waveletFun3(DATA.data(:,3)');
Acc_Y_Noise = waveletFun3(DATA.data(:,4)');
Acc_Z_Noise = waveletFun3(DATA.data(:,5)');
Gro_X_Noise = waveletFun3(DATA.data(:,6)');
Gro_Y_Noise = waveletFun3(DATA.data(:,7)');
Gro_Z_Noise = waveletFun3(DATA.data(:,8)');
Mag_X_Noise = waveletFun3(DATA.data(:,9)');
Mag_Y_Noise = waveletFun3(DATA.data(:,10)');
Mag_Z_Noise = waveletFun3(DATA.data(:,11)');
Roll_Noise = waveletFun3(DATA.data(:,12)');
Pitch_Noise = waveletFun3(DATA.data(:,13)');
Yaw_Noise = waveletFun3(DATA.data(:,14)');

%���ֵ,δȥ��
Mean_Acc_X = mean(DATA.data(:,3));
Mean_Acc_Y = mean(DATA.data(:,4));
Mean_Acc_Z = mean(DATA.data(:,5));
Mean_Gro_X = mean(DATA.data(:,6));
Mean_Gro_Y = mean(DATA.data(:,7));
Mean_Gro_Z = mean(DATA.data(:,8));
%���ֵ,��ȥ��
Mean_Acc_X_Denois = mean(Acc_X_Noise);
Mean_Acc_Y_Denois = mean(Acc_Y_Noise);
Mean_Acc_Z_Denois= mean(Acc_Z_Noise);
Mean_Gro_X_Denois = mean(Gro_X_Noise);
Mean_Gro_Y_Denois = mean(Gro_Y_Noise);
Mean_Gro_Z_Denois = mean(Gro_Z_Noise);

%�󷽲δȥ��
Var_Acc_X = std(DATA.data(:,3));
Var_Acc_Y = std(DATA.data(:,4));
Var_Acc_Z = std(DATA.data(:,5));
Var_Gro_X = std(DATA.data(:,6));
Var_Gro_Y = std(DATA.data(:,7));
Var_Gro_Z = std(DATA.data(:,8));

%���ֵ,��ȥ��
Var_Acc_X_Denois = std(Acc_X_Noise);
Var_Acc_Y_Denois = std(Acc_Y_Noise);
Var_Acc_Z_Denois= std(Acc_Z_Noise);
Var_Gro_X_Denois = std(Gro_X_Noise);
Var_Gro_Y_Denois = std(Gro_Y_Noise);
Var_Gro_Z_Denois = std(Gro_Z_Noise);

figure(1);%���ٶ�
% subplot(311);plot(t1,DATA.data(:,2),t1,DATA.data(:,2)-Acc_X);legend('x');title('���ٶ�');ylabel('m/s2');xlabel('t/s');
% subplot(312);plot(t1,DATA.data(:,3),t1,DATA.data(:,3)-Acc_Y);legend('y');ylabel('m/s2');xlabel('t/s');
% subplot(313);plot(t1,DATA.data(:,4),t1,DATA.data(:,4)-Acc_Z);legend('z');ylabel('m/s2');xlabel('t/s');
subplot(311);plot(t1,DATA.data(:,3),t1,Acc_X_Noise);legend('ԭʼx','�˲���x');title('���ٶ�');ylabel('m/s2');xlabel('t/s');
subplot(312);plot(t1,DATA.data(:,4),t1,Acc_Y_Noise);legend('ԭʼy','�˲���y');ylabel('m/s2');xlabel('t/s');
subplot(313);plot(t1,DATA.data(:,5),t1,Acc_Z_Noise);legend('ԭʼz','�˲���y');ylabel('m/s2');xlabel('t/s');
figure(2);%���ٶ�
% subplot(311);plot(t1,DATA.data(:,5),t1,DATA.data(:,5)-Gro_X);legend('x');title('���ٶ�');ylabel('deg/s');xlabel('t/s');
% subplot(312);plot(t1,DATA.data(:,6),t1,DATA.data(:,5)-Gro_X);legend('y');ylabel('deg/s');xlabel('t/s');
% subplot(313);plot(t1,DATA.data(:,7),t1,DATA.data(:,5)-Gro_X);legend('z');ylabel('deg/s');xlabel('t/s');
subplot(311);plot(t1,DATA.data(:,6),t1,Gro_X_Noise);legend('ԭʼx','�˲���x');title('���ٶ�');ylabel('deg/s');xlabel('t/s');
subplot(312);plot(t1,DATA.data(:,7),t1,Gro_Y_Noise);legend('ԭʼy','�˲���x');ylabel('deg/s');xlabel('t/s');
subplot(313);plot(t1,DATA.data(:,8),t1,Gro_Z_Noise);legend('ԭʼz','�˲���x');ylabel('deg/s');xlabel('t/s');
figure(3);%�����ƣ���һ���ش�ʸ��
subplot(311);plot(t1,DATA.data(:,9));legend('ԭʼx');title('������');ylabel('AU');xlabel('t/s');
subplot(312);plot(t1,DATA.data(:,10));legend('ԭʼy');ylabel('AU');xlabel('t/s');
subplot(313);plot(t1,DATA.data(:,11));legend('ԭʼz');ylabel('AU');xlabel('t/s');
figure(4);%��̬��
subplot(311);plot(t1,DATA.data(:,12));legend('roll');title('��̬��');ylabel('deg');xlabel('t/s');
subplot(312);plot(t1,DATA.data(:,13));legend('pitch');ylabel('deg');xlabel('t/s');
subplot(313);plot(t1,DATA.data(:,14));legend('yaw');ylabel('deg');xlabel('t/s');
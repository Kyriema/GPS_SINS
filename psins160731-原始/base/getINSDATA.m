%������������Ԥ����
DATA=importdata('F:\��λ\Git-SINS-Branch\GPS_SINS\6.21�������ݲɼ�\INS_Static2-000.txt');
N=size(DATA.data,1);%����
t1=0.01:0.01:N*0.01;
t1=t1';
INS(:,1)= waveletFun3(DATA.data(:,2)');
INS(:,2)= waveletFun3(DATA.data(:,3)');
INS(:,3)= waveletFun3(DATA.data(:,4)');
INS(:,4)= waveletFun3(DATA.data(:,5)');
INS(:,5)= waveletFun3(DATA.data(:,6)');
INS(:,6)= waveletFun3(DATA.data(:,7)');
%ת��Ϊ��������ֱ�ӽ����������T
INS(:,1)= INS(:,1)*0.01;
INS(:,2)= INS(:,2)*0.01;
INS(:,3)= INS(:,3)*0.01;
INS(:,4)= INS(:,4)*0.01;
INS(:,5)= INS(:,5)*0.01;
INS(:,6)= INS(:,6)*0.01;
save('F:\��λ\Git-SINS-Branch\GPS_SINS\psins160731-ԭʼ\data\INS.mat','INS');
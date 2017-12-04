%%%��ʼ��׼
load('F:\��λ\�Ϲ���\�ܳ�ʵ��\��ʼ��׼ʵ��\aligin.mat');
%%%%���ٶȼ�������Ƶ�ƽ��ֵ
%%%%�õ��ǻ��ȣ����ص������ǽǶ�
dec=(1+9/60)*pi/180;%��ƫ��
inc=31*pi/180;%�����

accX=mean(stm32_data.acc(:,1));%��λΪm/s2
accY=mean(stm32_data.acc(:,2));
accZ=mean(stm32_data.acc(:,3));

mgnX=mean(stm32_data.mgn(:,1));%��λΪG
mgnY=mean(stm32_data.mgn(:,2));
mgnZ=mean(stm32_data.mgn(:,3));

roll_stard=mean(stm32_data.att(:,1));%ת��Ϊ����
pitch_stard=mean(stm32_data.att(:,2));
yaw_stard=mean(stm32_data.att(:,3));

g=sqrt(accX.^2+accY.^2+accZ.^2);%m/s2

pitch=asin(accY/g)*180/pi;%�������صľ��ǻ���
roll=asin(-accX/g/cos(pitch))*180/pi;
yaw=atan((mgnX*cos(dec)-mgnY*sin(dec))/(mgnX*sin(dec)+mgnY*cos(dec)))*180/pi;

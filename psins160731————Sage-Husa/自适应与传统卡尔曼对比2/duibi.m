%%%%�Ա�����Ӧ�������˲��봫ͳ�������˲��Ĳ��
avp_a=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�2\avp_adaptive.mat');
avp=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�2\avperr.mat');

p_a=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�2\p_a.mat');
p=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�2\p.mat');

t=avp_a.avperr(:,end);
glvs
myfigure;%�Ƕ����
subplot(311), plot(t, avp.avperr(:,1)/glv.sec,t, avp_a.avperr(:,1)/glv.sec,'r'); xygo('phiE'); legend('before','after');
subplot(312), plot(t, avp.avperr(:,2)/glv.sec,t, avp_a.avperr(:,2)/glv.sec,'r'); xygo('phiN'); legend('before','after');
subplot(313), plot(t, avp.avperr(:,3)/glv.min,t, avp_a.avperr(:,3)/glv.min,'r'); xygo('phiU'); legend('before','after');

myfigure;%�ٶ����
subplot(311), plot(t, avp.avperr(:,4),t, avp_a.avperr(:,4),'r'); xygo('dV'); legend('before','after');
subplot(312), plot(t, avp.avperr(:,5),t, avp_a.avperr(:,5),'r'); xygo('dV'); legend('before','after');
subplot(313), plot(t, avp.avperr(:,6),t, avp_a.avperr(:,6),'r'); xygo('dV'); legend('before','after');


myfigure;%λ�����
subplot(311), plot(t, avp.avperr(:,7)*glv.Re,t, avp_a.avperr(:,7)*glv.Re,'r'); xygo('dLat'); legend('before','after');
subplot(312), plot(t, avp.avperr(:,8)*glv.Re,t, avp_a.avperr(:,8)*glv.Re,'r'); xygo('dLon'); legend('before','after');
subplot(313), plot(t, avp.avperr(:,9),t, avp_a.avperr(:,9),'r'); xygo('dH'); legend('before','after');

myfigure;%λ�÷���
subplot(311), plot(t, p.xkpk(:,22),t, p_a.xkpk(:,22),'r'); xygo('dLat'); legend('before','after');
subplot(312), plot(t, p.xkpk(:,23),t, p_a.xkpk(:,23),'r'); xygo('dLon'); legend('before','after');
subplot(313), plot(t,p.xkpk(:,24),t, p_a.xkpk(:,24),'r'); xygo('dH'); legend('before','after');

%���ֵ
%����Ӧ������
mean_ad.Lat=mean(abs(avp_a.avperr(:,7)*glv.Re));
mean_ad.Lon=mean(abs(avp_a.avperr(:,8)*glv.Re));
mean_ad.Hei=mean(abs(avp_a.avperr(:,9)));
var_ad.Lat=var(avp_a.avperr(:,7)*glv.Re);
var_ad.Lon=var(avp_a.avperr(:,8)*glv.Re);
var_ad.Hei=var(avp_a.avperr(:,9));

%%%��ͳ������
mean_a.Lat=mean(abs(avp.avperr(:,7)*glv.Re));
mean_a.Lon=mean(abs(avp.avperr(:,8)*glv.Re));
mean_a.Hei=mean(abs(avp.avperr(:,9)));
var_a.Lat=var(avp.avperr(:,7)*glv.Re);
var_a.Lon=var(avp.avperr(:,8)*glv.Re);
var_a.Hei=var(avp.avperr(:,9));

%%���ֵ������Э����p
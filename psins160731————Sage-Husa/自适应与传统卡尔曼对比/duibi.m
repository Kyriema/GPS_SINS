%%%%�Ա�����Ӧ�������˲��봫ͳ�������˲��Ĳ��
avp_a=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�\avp_adaptive.mat');
avp=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�\avperr.mat');

p_a=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�\p_a.mat');
p=load('F:\��λ\�Ϲ���\psins160731��������Sage-Husa\����Ӧ�봫ͳ�������Ա�\p.mat');

t=avp_a.avperr(:,end);
t(:,1)=t(:,1)/60;
glvs
%%%������ֵ
maxlat_a=max(avp_a.avperr(:,7))*glv.Re;
maxlog_a=max(avp_a.avperr(:,8))*glv.Re;
maxwhei_a=max(avp_a.avperr(:,9));

maxwlat=max(avp.avperr(:,7))*glv.Re;
maxwhlog=max(avp.avperr(:,8))*glv.Re;
maxwhei=max(avp.avperr(:,9));


myfigure;%�Ƕ����
subplot(311), plot(t, avp.avperr(:,1)/glv.sec,t, avp_a.avperr(:,1)/glv.sec,'-.','LineWidth',1.5);  xlabel('ʱ�䣨���ӣ�'); ylabel('�����ǣ��ȣ�'); legend('��ͳ�������˲�','����Ӧ�������˲�');title('�Ƕ����');
subplot(312), plot(t, avp.avperr(:,2)/glv.sec,t, avp_a.avperr(:,2)/glv.sec,'-.','LineWidth',1.5);  xlabel('ʱ�䣨���ӣ�'); ylabel('����ǣ��ȣ�'); legend('��ͳ�������˲�','����Ӧ�������˲�');
subplot(313), plot(t, avp.avperr(:,3)/glv.min,t, avp_a.avperr(:,3)/glv.min,'-.','LineWidth',1.5);  xlabel('ʱ�䣨���ӣ�'); ylabel('����ǣ��ȣ�');legend('��ͳ�������˲�','����Ӧ�������˲�');

myfigure;%�ٶ����
subplot(311), plot(t, avp.avperr(:,4),t, avp_a.avperr(:,4),'-.','LineWidth',1.5); xlabel('ʱ�䣨���ӣ�'); ylabel('�����ٶ���m/s��');legend('��ͳ�������˲�','����Ӧ�������˲�');title('�ٶ����');
subplot(312), plot(t, avp.avperr(:,5),t, avp_a.avperr(:,5),'-.','LineWidth',1.5);xlabel('ʱ�䣨���ӣ�'); ylabel('�����ٶ���m/s��'); legend('��ͳ�������˲�','����Ӧ�������˲�');
subplot(313), plot(t, avp.avperr(:,6),t, avp_a.avperr(:,6),'-.','LineWidth',1.5); xlabel('ʱ�䣨���ӣ�'); ylabel('�����ٶ���m/s��'); legend('��ͳ�������˲�','����Ӧ�������˲�');


myfigure;%λ�����
subplot(311), plot(t, avp.avperr(:,7)*glv.Re,t, avp_a.avperr(:,7)*glv.Re,'-.','LineWidth',1.5); xygo('γ�ȣ��ף�'); legend('��ͳ�������˲�','����Ӧ�������˲�');title('λ�����');
subplot(312), plot(t, avp.avperr(:,8)*glv.Re,t, avp_a.avperr(:,8)*glv.Re,'-.','LineWidth',1.5); xygo('���ȣ��ף�'); legend('��ͳ�������˲�','����Ӧ�������˲�');
subplot(313), plot(t, avp.avperr(:,9),t, avp_a.avperr(:,9),'-.','LineWidth',1.5); xygo('�߶ȣ��ף�'); legend('��ͳ�������˲�','����Ӧ�������˲�');

% 
% myfigure;%Э����
% subplot(311), plot(t, p.xkpk(:,22),t, p_a.xkpk(:,22),'r'); xygo('γ�ȣ��ף�'); legend('��ͳ�������˲�','����Ӧ�������˲�');
% subplot(312), plot(t, p.xkpk(:,23),t, p_a.xkpk(:,23),'r'); xygo('����'); legend('��ͳ�������˲�','����Ӧ�������˲�');
% subplot(313), plot(t,p.xkpk(:,24),t, p_a.xkpk(:,24),'r'); xygo('�߶�'); legend('��ͳ�������˲�','����Ӧ�������˲�');

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
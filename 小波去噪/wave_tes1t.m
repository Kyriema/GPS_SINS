load leleccum;
index = 1:1024;
x = leleccum(index);
%���������ź�
init = 2055615866;
randn('seed',init);
nx = x + 18*randn(size(x));
%��ȡ�������ֵ
[thr,sorh,keepapp] = ddencmp('den','wv',nx);
%���źŽ�������
xd = wdencmp('gbl',nx,'db4',2,thr,sorh,keepapp);
subplot(221);
plot(x);
title('ԭʼ�ź�');
subplot(222);
plot(nx);
title('�����ź�');
subplot(223);
plot(xd);
title('�������ź�');
% subplot(224);
% plot(leleccum);
% title('lelccum');
%����С��ȥ�뺯��
load leleccum;
indx = 1:1024;
x = leleccum(indx);
%���������ź�
init = 2055615886;
% randn('seed',init);
nx = x + 18*randn(size(x));
%nx=nx';����Ϊ������
xd = waveletFun(nx);
subplot(221);
plot(x);
title('ԭʼ�ź�');
subplot(222);
plot(nx);
title('�����ź�');
subplot(223);
plot(xd);
title('�������ź�');
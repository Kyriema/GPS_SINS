% �����У�ʹ��һά�źŵ��Զ����뺯��wden���źŽ������롣
load leleccum;
indx = 1:1024;
x = leleccum(indx);
%���������ź�
init = 2055615866;
randn('seed',init);
nx = x + 18*randn(size(x));
%���ź�nxʹ��С������'sym5'�ֽ⵽��5��
%ʹ��mimimaxi��ֵѡ��ϵ�����д������������ź�
lev = 5
xd = wden(nx,'minimaxi','s','mln',lev,'sym5');
subplot(221);
plot(x);
title('ԭʼ�ź�');
subplot(222);
plot(nx);
title('�����ź�');
subplot(223);
plot(xd);
title('�������ź�');
function result = waveletFun3(data)
%С��ȥ�뺯��3
%data������������
%resultΪ�������


%���ź�nxʹ��С������'sym5'�ֽ⵽��5��
%ʹ��mimimaxi��ֵѡ��ϵ�����д������������ź�
lev = 5
result = wden(data,'minimaxi','s','mln',lev,'sym5');
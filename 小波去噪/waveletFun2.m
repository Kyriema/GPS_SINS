function result = waveletFun2(data)
%С��ȥ�뺯��2
%data������������
%resultΪ�������


%ʹ��С������'db5'���źŽ���3��ֽ�
[c,l] = wavedec(data,3,'db5');
%���ó߶�����
n = [1,2,3];
%������ֵ����
p = [100,90,80];
%�Ը�Ƶϵ��������ֵ����
nc = wthcoef('d',c,l,n,p);
%���������С���ֽ�ṹ�����ع�
result= waverec(nc,l,'db5');
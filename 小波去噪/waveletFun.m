function result = waveletFun(data)
%С��ȥ�뺯��0
%data������������
%resultΪ�������


%ʹ��С������'db6'���źŽ���3��ֽ�
[c,l] = wavedec(data,3,'db6');
%���Ƴ߶�1��������׼��
sigma = wnoisest(c,l,1);
alpha = 2;
%��ȡ��������е���ֵ
thr = wbmpen(c,l,sigma,alpha);
keepapp = 1;
%���źŽ�������
result = wdencmp('gbl',c,l,'db6',3,thr,'s',keepapp);
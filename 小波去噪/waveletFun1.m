function result = waveletFun1(data)
%С��ȥ�뺯��1
%data������������
%resultΪ�������


%��ȡ�������ֵ
[thr,sorh,keepapp] = ddencmp('den','wv',data);
%���źŽ�������99
result = wdencmp('gbl',data,'db4',2,thr,sorh,keepapp);

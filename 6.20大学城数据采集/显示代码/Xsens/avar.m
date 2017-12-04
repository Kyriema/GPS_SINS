function [sigma,tau,Err,R]=avar(y0,tau0,titles,num)
%����Allan����
%Allan���� ���ٵ�λӦ������y����һ�� 
%tauo����
%titles ��ͼ����
%num ��ͼ˳��
%R �Ƕ��������
y=y0;
Nl=length(y);
N=Nl;
for k=1:inf
    sigma(k,1)=sqrt(1/(2*(N-1))*sum([y(2:N)-y(1:N-1)].^2));
    tau(k,1)=2^(k-1)*tau0;
    Err(k,1)=1/sqrt(2*(N-1));
    N=floor(N/2);
    if N<3
        break;
    end
    y=1/2*(y(1:2:2*N)+y(2:2:2*N));
end
R = interp1(tau,sigma,1)*60 ;%%%�Ƕ��������
figure(num);
subplot(211),plot(tau0*[1:Nl],y0);grid
title(titles);
xlabel('\itt\rm/s');ylabel('\ity');
subplot(212),
loglog(tau,sigma,[1,1],[0.0001,0.1]);grid%%%%˫��������
xlabel('\itt\rm/s');
ylabel('\it\sigma_A\rm(\tau)');
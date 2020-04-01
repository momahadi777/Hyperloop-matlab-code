% Hyperloop critical area of pod to tube ratio 
% by mohammed Mahdi 
% KAU -Aeronautics department- college of engineering 
%phd program 
clc
clear all
%% inputs 
k=1.4;
y=(k-1)/2;
c=(k+1)/(2*(k-1));
M_pod=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];
M_by=linspace(0.0,1.2,20);
A_ratio=zeros(length(M_pod),length(M_by));
for i=1:length(M_pod)
    for j=1:length(M_by)
        A_ratio(i,j)=(M_pod(i)/M_by(j))*(((1+y*(M_by(j))^2)/(1+y*(M_pod(i))^2))^c);
        A_cr(i)=1/[(1/M_pod(i))*((2+(k-1)*(M_pod(i))^2)/(k+1))^[c]];
    end
end

figure(1)
plot(M_by,A_ratio)
axis([0 1.2 0 1.2])
xlabel('Bypass Mach Number')
ylabel('Area ratio = Bypass/Tube')
legend('M_p_o_d= 0.1','           0.2','            0.3','            0.4','           0.5','           0.6','           0.7','           0.8','           0.9')
grid on

figure(2)
plot(M_pod,A_cr)
xlabel('M_P_O_D')
ylabel('Critical Area Ratio= Asonic/Atube')
grid on
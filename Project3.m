%%%% Project02 for Math 238

clear all;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% plotting the solution y for each gamma
figure;
gamma = 0.2;
[t,y] = ode45(@(t,y) mass_spring_ext(t,y,gamma),[0 100],[1; 0]);
plot(t,y(:,1),'-+'); hold on;

gamma = 0.42;
[t,y] = ode45(@(t,y) mass_spring_ext(t,y,gamma),[0 100],[1; 0]);
plot(t,y(:,1),'--'); hold on;

gamma = 0.6;
[t,y] = ode45(@(t,y) mass_spring_ext(t,y,gamma),[0 100],[1; 0]);
plot(t,y(:,1),'-o'); hold on;

gamma = 0.8;
[t,y] = ode45(@(t,y) mass_spring_ext(t,y,gamma),[0 100],[1; 0]);
plot(t,y(:,1),'-*'); hold off;
xlabel('Time t');
ylabel('Solution y');
legend('gamma=0.2','gamma=0.42','gamma=0.6','gamma=0.8');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% plotting the amplitude of the steady-state solution (A(gamma)=F0*M(gamma)) vs gamma
figure;
m = 1; k = 1/5; b = 1/5; F0 = 1;
gama = 0.2:0.01:0.8;
M_gama = F0./sqrt((k-m*gama.^2).^2+b^2*gama.^2);
plot(gama,M_gama);
xlabel('gamma');
ylabel('A(gamma)');


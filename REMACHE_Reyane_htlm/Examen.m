% REMACHE Reyane
% Sujet 3
% y'(x)=(x^2)*y(x)
% x(0)=0 et y(0)=1
% x=[0,1]
% h=0,02
%N=50
clear all;
close all;


h=0.02;
t=[0:h:1];
N=50;
x(1)=0;
y(1)=1;
% QUestion 1


for i=1:N
y(i+1)= y(i) + h*((t(i).*t(i))*y(i));
end

%Question 2

subplot(1,2,1);
plot(t,y,'b');
xlabel('x');
ylabel('y(x)');
title('Courbe de la solution numerique et analytique');
%Question 3

y  = exp((t.*t.*t)/3);
% On constate que la courbe analytique est au deçu la courbe numerique car
% la courbe analytique est plus précise 

hold on;
plot(t,y,'r');
legend('numerique','analytique');

% Question 4
N=100;
h=1/N;
t=[0:h:1];


for i=1:N
y(i+1)= y(i) + h*((t(i).*t(i))*y(i));
end

subplot(1,2,2);
plot(t,y,'g');
xlabel('x');
ylabel('y(x)');

y=exp((t.*t.*t)/3);

hold on;
plot(t,y,'y');
legend('numerique','analytique');

% Quand on auguement le nombre de noeuds les résultats de la courbe
% numérique sont plus précis
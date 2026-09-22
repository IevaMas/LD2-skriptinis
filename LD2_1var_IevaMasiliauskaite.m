% Data: 2026-09-22
% Variantas: 1
% Ieva Masiliauskaitė

clear; clc;

a = 5:2:34;
disp(a);

b = exp(a);
disp(b);

c = a ./ b;
disp(c);

c_stulpelis = c.';
disp(c_stulpelis);

A = [pi/2, 3i; log(2), 2*pi];
disp(A);

B = [exp(A(1,1)), exp(A(1,2))];
A2 = [A; B];
disp(A2);
 
eiluciu_sumos = sum(A2, 2);
disp(eiluciu_sumos);

Amp = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;

t = 0:0.001:1;
s_svarus = Amp * sin(2*pi*f*t);
n = sigma * randn(size(t));
s = s_svarus + n;

virsijancios = s(s > U1);
disp(virsijancios);

s_filtruotas = s;
s_filtruotas(abs(s_filtruotas) < U2) = 0;
disp(s_filtruotas);

disp(length(s));

disp(length(virsijancios));

maks = max(s_filtruotas);
mins = min(s_filtruotas);
disp(maks);
disp(mins);

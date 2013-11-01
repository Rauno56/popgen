M = zeros(3);

M(1, 2) = 10**-6;
M(1, 3) = 10**-7;
M(3, 1) = 5*10**-8;

M = M'
S = 1 - sum(M);
for i=1:3,
	M(i,i) = S(i);
end

disp('Täpsuse Kontrolliks')
disp(M==1)

M*M'


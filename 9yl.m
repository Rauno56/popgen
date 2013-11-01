
M = [2 1 0; 0 1 2; 0 0 0]/2;
p = [1; 1; 1]
p = p/sum(p)

for (i=1:3)
	(M**i)*p
end

Q = M(2:3, 2:3)

inv(eye(size(Q))-Q)

disp('Z2')
Z2 = 2*M**2 - M;
disp(Z2)
disp('Z3')
Z3 = 2*(M - Z2);
Z3 = 4*(M**2 - Z2);
disp(Z3)


disp('Probabilities of pure line:');

p = [1; 0; 0]
for (i=1:2)
	pclean = [1 0 0]*(M**i)*p;
	pclean2 = [1 1-(1/2**i) 1-2*(1/2**i)]*p;
	fprintf('%d generation: %f\n', i, 100*pclean);
	fprintf('%f with eigenvalues\n', 100*pclean2);
	disp('')
end

p = [0; 1; 0]
for (i=1:3)
	pclean = [1 0 0]*(M**i)*p;
	pclean2 = [1 1-(1/2**i) 1-2*(1/2**i)]*p;
	fprintf('%d generation: %f\n', i, 100*pclean);
	fprintf('%f with eigenvalues\n', 100*pclean2);
	disp('')
end

p = [0; 0; 1]
for (i=1:4)
	pclean = [1 0 0]*(M**i)*p;
	pclean2 = [1 1-(1/2**i) 1-2*(1/2**i)]*p;
	fprintf('%d generation: %f\n', i, 100*pclean);
	fprintf('%f with eigenvalues\n', 100*pclean2);
	disp('')
end


lambda = eig(M)

X = [2 3 5; 9 8 7; 6 5 4]
p = [1 0 0]
p*X

[0 0 1]*[1; 2; 3]

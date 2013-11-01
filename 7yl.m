
A=1;
a=2;

AA = 1;
Aa = 2;
aa = 3;

S = [0.2 0.3 0.5];
gToA = [2 0; 1 1; 0 2];
C = S*gToA;
C = C/sum(C);
disp('Alleelide sagedused [A a]')
disp(C)

b = S(AA)+S(aa)-2*S(Aa)
plim = (S(aa)-S(Aa))/b


disp('==> ')

% Garanteerime vaid antud algandmetega õige lahendi.
% Ei pruugi arutada kõiki variante.
if 0<plim && plim<1
	if b>0
		disp('plim on statsionaarne, tõmbav')
	else
		disp('plim on statsionaarne, tõukav')
		if C(A)>plim
			disp('A -> 1')
		elseif C(A)<plim
			disp('A -> 0')
		else
			disp('A -> plim')
		end
	end
else
	disp('plim ei ole statsionaarne')
	if b>0
		disp('tõmbav')
		if C(A)>plim
			disp('A -> 0')
		elseif C(A)<plim
			disp('A -> 1')
		end
	else
		disp('tõukav')
	end
end

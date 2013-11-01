counter = [2 1 0; 0 1 2];

% aCountsFromG([1 1; 2 2; 1 1])

% n11=13;
% n12=23;
% n22=4;
% disp('Kogused [N11 N12 N22]')
% nnCount = [n11 n12 n22];
% disp(nnCount)
% disp('Sagedused [N11 N12 N22]%')
% disp(nnCount / sum(nnCount))
% nCount = sum(nnCount.*counter, 2)
% nFreq = nCount / sum(nCount)

% Xing = nFreq*nFreq'

% gen2n11 = Xing(1);
% gen2n12 = Xing(2)*2;
% gen2n22 = Xing(4);
% gen2nnFreq = [gen2n11 gen2n12 gen2n22]

% gen2nFreq = sum(gen2nnFreq.*counter, 2)/2

% gen2nnFreq*40


n11=13;
n12=23;
n22=4;
nnCount = [n11 n12 n22]
N = sum(nnCount)
disp('Genotüübisagedused[11 12 22]')
disp(nnCount/N)
nCount = sum(nnCount.*counter, 2);
disp('Aleelisagedused[01 02]')
nFreq = nCount / sum(nCount);
disp(nFreq')
hw11 = nFreq(1)**2
hw12 = 2*nFreq(1)*nFreq(2)
hw22 = nFreq(2)**2
% disp('Kontrolliks summa:')
% disp(hwBB + hwBb + hwbb)
expectedNnCount = [hw11 hw12 hw22]*N

chi2 = (nnCount-expectedNnCount).**2./expectedNnCount
chi2Total = sum(chi2)

disp('==> peab jääma H0 juurde: süsteem on H-W tasakaalus')
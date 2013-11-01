nnCounts = [120 890 1225-890];
gToA = [2 0; 1 1; 0 2]
N = sum(nnCounts);
disp('Sagedused(bb Bb BB):');
disp(nnCounts);
disp('Sagedused %:');
disp(nnCounts/sum(nnCounts));

nCount = nnCounts*gToA;
disp('Sagedused(b B):');
disp(nCount);
disp('Sagedused %:');
nFreq = nCount/sum(nCount);
disp(nFreq);

disp('Peaks sündima %:');
gen2 = nFreq'*nFreq;
disp(gen2);
counts = gen2*N;
disp('Peaks sündima N:');
disp(counts);
sum(sum(counts))
% == 2*N
% disp([b(1) b(1)*b(1)]);

function a = aCountsFromG(genotypeFreqs)

s = size(genotypeFreqs)

if s(1) == s(2)
	disp('square')
elseif min(s)==1
	disp('vector')
else
	disp('neither')
end

end

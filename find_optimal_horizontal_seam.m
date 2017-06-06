function horizontalSeam = find_optimal_horizontal_seam(cumulativeEnergyMap)
	%the minimum value of the last column in M will indicate the end of the minimal connected horizontal seam
	
	%[M,N] = size(cumulativeEnergyMap)
	%horizontalSeam = 1:N;
	
	%size(cumulativeEnergyMap)
	%[~, baseI] = min( cumulativeEnergyMap(:,N) ); %minimum of the last row
		
	%horizontalSeam(N) = baseI;
	%baseI
	
	%for i = N-1:-1:1
	%	if  baseI == 1
	%		[~, I] = min( cumulativeEnergyMap(baseI:baseI+1, i) );
	%		I = I-1;
	%	elseif  baseI == M
	%		[~, I] = min( cumulativeEnergyMap(baseI-1:baseI, i) ); 
	%		I = I-2;
	%	else
	%		[~, I] = min( cumulativeEnergyMap(baseI-1:baseI+1, i) ); 
	%		I = I-2;
	%	end
	%		
	%	horizontalSeam(i) = baseI + I;
	%	baseI = horizontalSeam(i);
	%	baseI
	%end
		
	%horizontalSeam = fliplr(horizontalSeam);
	
	horizontalSeam = find_optimal_vertical_seam(transpose(cumulativeEnergyMap));
function verticalSeam = find_optimal_vertical_seam(cumulativeEnergyMap)
	%the minimum value of the last row in M will indicate the end of the minimal connected vertical seam
	
	[M,N] = size(cumulativeEnergyMap);
	verticalSeam = 1:M;
	
	[~, baseI] = min( cumulativeEnergyMap(M,:) ); %minimum of the last row
	verticalSeam(M) = baseI;
	baseI
	I=0;
	
	for i = M-1:-1:1 %for each row
		
		if  baseI == 1 %if last x index was 1
			[~, I] = min( cumulativeEnergyMap(i, baseI:baseI+1) );
			I = I-1;
		
		elseif  baseI == N %if last x index was N
			[~, I] = min( cumulativeEnergyMap(i, baseI-1:baseI) ); 
			I = I-2;
		
		else %if last x index wasnt on an edge
			[~, I] = min( cumulativeEnergyMap(i, baseI-1:baseI+1) ); 
			I = I-2;
		end
			
		verticalSeam(i) = baseI + I;
		baseI = verticalSeam(i);
		baseI
	end
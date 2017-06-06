function cumulativeEnergyMap = cumulative_minimum_energy_map(energyImage, seamDirection);

	if ~ (  strcmp(seamDirection, 'VERTICAL') || strcmp(seamDirection, 'HORIZONTAL') )
		error('invalid seamDirection');
	end
	
	
	
	
	
	
	cumulativeEnergyMap = energyImage;
		
	if strcmp(seamDirection, 'VERTICAL')
		cumulativeEnergyMap = transpose(cumulativeEnergyMap);
	end
	
	[M,N] = size(cumulativeEnergyMap);
	
	for i = 2:M
		for j = 1:N
			if j == 1
				cumulativeEnergyMap(i,j) = cumulativeEnergyMap(i,j) + min( [cumulativeEnergyMap(i-1,j), cumulativeEnergyMap(i-1,j+1)] );
			elseif j == N
				cumulativeEnergyMap(i,j) = cumulativeEnergyMap(i,j) + min( [cumulativeEnergyMap(i-1,j-1), cumulativeEnergyMap(i-1,j)] );
			else
				cumulativeEnergyMap(i,j) = cumulativeEnergyMap(i,j) + min( [cumulativeEnergyMap(i-1,j-1), cumulativeEnergyMap(i-1,j), cumulativeEnergyMap(i-1,j+1) ]);
			end
		end
	end
	
	if strcmp(seamDirection, 'VERTICAL')
		cumulativeEnergyMap = transpose(cumulativeEnergyMap);
	end
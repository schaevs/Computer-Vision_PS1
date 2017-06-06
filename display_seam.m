function display_seam(im,seam,seamDirection)
	if ~( strcmp(seamDirection, 'VERTICAL') || strcmp(seamDirection, 'HORIZONTAL') )
		error('invalid seamDirection');
	end
	
	imshow(im);
	hold on;
	[y,x,z] = size(im)
	if strcmp(seamDirection, 'VERTICAL')
		Y = 1:y;
		X = fliplr(seam); 
	else
		Y = fliplr(seam);
		X = 1:x;
	end
	
	size(seam)
	x
	
	plot(X,Y);
	saveas(gcf,'Barchart.png')
	hold off
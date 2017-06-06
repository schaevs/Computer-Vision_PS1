function energyImage = energy_image(im)
	imGray = rgb2gray(im);
	imshow(imGray);
	saveas(gcf,'gray.png');
	[Gx, Gy] = imgradientxy(imGray);
	energyImage = sqrt( (Gx.^2) + (Gy.^2) );
	imshow(energyImage, [0 64]);                                             
	saveas(gcf,'enIm.png');
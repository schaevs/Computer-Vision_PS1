prague = imread('inputSeamCarvingPrague.jpg');
pragueEnIm = energy_image(prague);

mall = imread('outputReduceWidthMall.png');
mallEnIm = energy_image(mall);

for i = 1:100
	[prague,pragueEnIm] = reduce_width(prague, pragueEnIm);
	[mall,mallEnIm] = reduce_width(mall, malleEnIm);
end
		
imwrite(prague, 'outputReduceWidthPrague.png');
imwrite(prague, 'outputReduceWidthMall.png');